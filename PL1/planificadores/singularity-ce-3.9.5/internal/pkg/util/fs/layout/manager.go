// Copyright (c) 2018-2021, Sylabs Inc. All rights reserved.
// This software is licensed under a 3-clause BSD license. Please consult the
// LICENSE.md file distributed with the sources of this project regarding your
// rights to use or distribute this software.

package layout

import (
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
	"syscall"

	"github.com/sylabs/singularity/internal/pkg/util/fs"
)

const (
	dirMode  os.FileMode = 0o755
	fileMode os.FileMode = 0o644
)

type file struct {
	created bool
	mode    os.FileMode
	uid     int
	gid     int
	content []byte
}

type dir struct {
	created bool
	mode    os.FileMode
	uid     int
	gid     int
}

type symlink struct {
	created bool
	uid     int
	gid     int
	target  string
}

type VFS interface {
	Chown(string, int, int) error
	EvalRelative(string, string) string
	Lchown(string, int, int) error
	Mkdir(string, os.FileMode) error
	Readlink(string) (string, error)
	ReadDir(string) ([]os.FileInfo, error)
	Stat(string) (os.FileInfo, error)
	Symlink(string, string) error
	Umask(int) int
	WriteFile(string, []byte, os.FileMode) error
}

type defaultVFS struct{}

func (v *defaultVFS) Chown(name string, uid, gid int) error {
	return os.Chown(name, uid, gid)
}

func (v *defaultVFS) EvalRelative(path, root string) string {
	return fs.EvalRelative(path, root)
}

func (v *defaultVFS) Lchown(name string, uid, gid int) error {
	return os.Lchown(name, uid, gid)
}

func (v *defaultVFS) Mkdir(name string, perm os.FileMode) error {
	return os.Mkdir(name, perm)
}

func (v *defaultVFS) Readlink(name string) (string, error) {
	return os.Readlink(name)
}

func (v *defaultVFS) ReadDir(dir string) ([]os.FileInfo, error) {
	return ioutil.ReadDir(dir)
}

func (v *defaultVFS) Stat(name string) (os.FileInfo, error) {
	return os.Stat(name)
}

func (v *defaultVFS) Symlink(oldname, newname string) error {
	return os.Symlink(oldname, newname)
}

func (v *defaultVFS) Umask(mask int) int {
	return syscall.Umask(mask)
}

func (v *defaultVFS) WriteFile(filename string, data []byte, perm os.FileMode) error {
	f, err := os.OpenFile(filename, os.O_CREATE|os.O_WRONLY|os.O_EXCL, perm)
	if err != nil {
		if !os.IsExist(err) {
			return fmt.Errorf("failed to create file %s: %s", filename, err)
		}
		return err
	}
	if len(data) > 0 {
		_, err = f.Write(data)
	}
	if err1 := f.Close(); err == nil {
		err = err1
	}
	return err
}

// DefaultVFS is the default VFS.
var DefaultVFS VFS = &defaultVFS{}

// Manager manages a filesystem layout in a given path
type Manager struct {
	VFS      VFS
	DirMode  os.FileMode
	FileMode os.FileMode
	rootPath string
	entries  map[string]interface{}
	dirs     []*dir

	// each entries can contain multiple directories, the first
	// directory of each entry is always substituted to the bound
	// directory, the others if any are the directories to create
	// for nested binds support
	ovDirs map[string][]string
}

func (m *Manager) checkPath(path string, checkExist bool) (string, error) {
	if m.entries == nil {
		return "", fmt.Errorf("root path is not set")
	}
	p := filepath.Clean(path)
	if !filepath.IsAbs(p) {
		return "", fmt.Errorf("path %s is not an absolute path", p)
	}
	if checkExist {
		if _, ok := m.entries[p]; ok {
			return "", fmt.Errorf("%s already exists in layout", p)
		}
	} else {
		if _, ok := m.entries[p]; !ok {
			return "", fmt.Errorf("%s doesn't exist in layout", p)
		}
	}
	return p, nil
}

func (m *Manager) createParentDir(path string) {
	uid := os.Getuid()
	gid := os.Getgid()

	splitted := strings.Split(path, string(os.PathSeparator))
	l := len(splitted)
	p := ""
	for i := 1; i < l; i++ {
		s := splitted[i : i+1][0]
		p += "/" + s
		if s != "" {
			if _, ok := m.entries[p]; !ok {
				d := &dir{mode: m.DirMode, uid: uid, gid: gid}
				m.entries[p] = d
				m.dirs = append(m.dirs, d)
				// check if the parent directory is part of the overridden
				// directories to force the creation of the destination
				// directory in the right parent directory (nested binds)
				if ovDirs, ok := m.ovDirs[filepath.Dir(p)]; ok {
					m.overrideDir(p, filepath.Join(ovDirs[0], filepath.Base(p)))
				}
			}
		}
	}
}

// SetRootPath sets layout root path
func (m *Manager) SetRootPath(path string) error {
	if !fs.IsDir(path) {
		return fmt.Errorf("%s is not a directory or doesn't exists", path)
	}
	m.rootPath = filepath.Clean(path)
	if m.entries == nil {
		m.entries = make(map[string]interface{})
	} else {
		return fmt.Errorf("root path is already set")
	}
	if m.ovDirs == nil {
		m.ovDirs = make(map[string][]string)
	}
	if m.dirs == nil {
		m.dirs = make([]*dir, 0)
	}
	if m.DirMode == 0o000 {
		m.DirMode = dirMode
	}
	if m.FileMode == 0o000 {
		m.FileMode = fileMode
	}
	d := &dir{mode: m.DirMode, uid: os.Getuid(), gid: os.Getgid()}
	m.entries["/"] = d
	m.dirs = append(m.dirs, d)
	return nil
}

// AddDir adds a directory in layout, will recursively add parent
// directories if they don't exist
func (m *Manager) AddDir(path string) error {
	p, err := m.checkPath(path, true)
	if err != nil {
		return err
	}
	m.createParentDir(p)
	return nil
}

// AddFile adds a file in layout, will recursively add parent
// directories if they don't exist
func (m *Manager) AddFile(path string, content []byte) error {
	p, err := m.checkPath(path, true)
	if err != nil {
		return err
	}
	m.createParentDir(filepath.Dir(p))
	m.entries[p] = &file{mode: m.FileMode, uid: os.Getuid(), gid: os.Getgid(), content: content}
	return nil
}

// AddSymlink adds a symlink in layout, will recursively add parent
// directories if they don't exist
func (m *Manager) AddSymlink(path string, target string) error {
	p, err := m.checkPath(path, true)
	if err != nil {
		return err
	}
	m.createParentDir(filepath.Dir(p))
	m.entries[p] = &symlink{uid: os.Getuid(), gid: os.Getgid(), target: target}
	return nil
}

// overrideDir will substitute another directory to the one associated
// to directory located by path. When called multiple times subsequent
// path are used to store directories to be created for nested binds.
func (m *Manager) overrideDir(path string, realpath string) {
	for _, ovDir := range m.ovDirs[path] {
		if ovDir == realpath {
			return
		}
	}
	m.ovDirs[path] = append(m.ovDirs[path], realpath)
}

// GetOverridePath returns the real path for the session path
func (m *Manager) GetOverridePath(path string) (string, error) {
	if p, ok := m.ovDirs[path]; ok {
		return p[0], nil
	}
	return "", fmt.Errorf("no override directory %s", path)
}

// GetPath returns the full path of layout path
func (m *Manager) GetPath(path string) (string, error) {
	_, err := m.checkPath(path, false)
	if err != nil {
		return "", err
	}
	return filepath.Join(m.rootPath, path), nil
}

// Chmod sets permission mode for path
func (m *Manager) Chmod(path string, mode os.FileMode) error {
	_, err := m.checkPath(path, false)
	if err != nil {
		return err
	}
	switch m.entries[path].(type) {
	case *file:
		m.entries[path].(*file).mode = mode
	case *dir:
		m.entries[path].(*dir).mode = mode
	}
	return nil
}

// Chown sets ownership for path
func (m *Manager) Chown(path string, uid, gid int) error {
	_, err := m.checkPath(path, false)
	if err != nil {
		return err
	}
	switch m.entries[path].(type) {
	case *file:
		m.entries[path].(*file).uid = uid
		m.entries[path].(*file).gid = gid
	case *dir:
		m.entries[path].(*dir).uid = uid
		m.entries[path].(*dir).gid = gid
	case *symlink:
		m.entries[path].(*symlink).uid = uid
		m.entries[path].(*symlink).gid = gid
	}
	return nil
}

// Create creates the filesystem layout
func (m *Manager) Create() error {
	return m.sync()
}

// Update updates the filesystem layout
func (m *Manager) Update() error {
	return m.sync()
}

func (m *Manager) sync() error {
	uid := os.Getuid()
	gid := os.Getgid()

	if m.entries == nil {
		return fmt.Errorf("root path is not set")
	}

	oldmask := m.VFS.Umask(0)
	defer m.VFS.Umask(oldmask)

	for _, d := range m.dirs[1:] {
		if d.created {
			continue
		}
		path := ""
		for p, e := range m.entries {
			if e == d {
				path = m.rootPath + p
				for _, ovDir := range m.ovDirs[p] {
					if _, err := m.VFS.Stat(ovDir); err != nil {
						if err := m.VFS.Mkdir(ovDir, m.DirMode); err != nil {
							return fmt.Errorf("failed to create %s directory: %s", ovDir, err)
						}
					}
				}
				break
			}
		}
		if path == "" {
			continue
		}
		if d.mode != m.DirMode {
			if err := m.VFS.Mkdir(path, d.mode); err != nil {
				if !os.IsExist(err) {
					return fmt.Errorf("failed to create %s directory: %s", path, err)
				}
				// skip owner change, not created by us
				d.created = true
				continue
			}
		} else {
			if err := m.VFS.Mkdir(path, m.DirMode); err != nil {
				if !os.IsExist(err) {
					return fmt.Errorf("failed to create %s directory: %s", path, err)
				}
				// skip owner change, not created by us
				d.created = true
				continue
			}
		}
		if d.uid != uid || d.gid != gid {
			if err := m.VFS.Chown(path, d.uid, d.gid); err != nil {
				return fmt.Errorf("failed to change owner of %s: %s", path, err)
			}
		}
		d.created = true
	}

	for p, e := range m.entries {
		path := m.rootPath + p
		if ovDir, err := m.GetOverridePath(filepath.Dir(p)); err == nil {
			path = filepath.Join(ovDir, filepath.Base(p))
		}
		switch entry := e.(type) {
		case *file:
			if entry.created {
				continue
			}
			if err := m.VFS.WriteFile(path, entry.content, entry.mode); err != nil {
				if !os.IsExist(err) {
					return fmt.Errorf("failed to create file %s: %s", path, err)
				}
				// skip content write or owner change, not created by us
				entry.created = true
				continue
			}
			if entry.uid != uid || entry.gid != gid {
				if err := m.VFS.Chown(path, entry.uid, entry.gid); err != nil {
					return fmt.Errorf("failed to change %s ownership: %s", path, err)
				}
			}
			entry.created = true
		case *symlink:
			if entry.created {
				continue
			}
			if err := m.VFS.Symlink(entry.target, path); err != nil {
				if !os.IsExist(err) {
					return fmt.Errorf("failed to create symlink %s: %s", path, err)
				}
				// check that current symlink point to the right target if it's a symlink
				// otherwise we consider the entry as already created no matter if it's a
				// file, a directory or something else
				target, err := m.VFS.Readlink(path)
				if err == nil && target != entry.target {
					return fmt.Errorf("symlink %s point to %s instead of %s", path, target, entry.target)
				}
				// skip symlink owner change, not created by us
				entry.created = true
				continue
			}
			if entry.uid != uid || entry.gid != gid {
				if err := m.VFS.Lchown(path, entry.uid, entry.gid); err != nil {
					return fmt.Errorf("failed to change %s ownership: %s", path, err)
				}
			}
			entry.created = true
		}
	}
	return nil
}
