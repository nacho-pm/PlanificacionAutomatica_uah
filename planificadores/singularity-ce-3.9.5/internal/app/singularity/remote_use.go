// Copyright (c) 2020, Control Command Inc. All rights reserved.
// Copyright (c) 2019-2021, Sylabs Inc. All rights reserved.
// This software is licensed under a 3-clause BSD license. Please consult the
// LICENSE.md file distributed with the sources of this project regarding your
// rights to use or distribute this software.

package singularity

import (
	"fmt"
	"io"
	"os"

	"github.com/sylabs/singularity/internal/pkg/remote"
)

func syncSysConfig(cUsr *remote.Config) error {
	// opening system config file
	f, err := os.OpenFile(remote.SystemConfigPath, os.O_RDONLY, 0o600)
	if err != nil && os.IsNotExist(err) {
		return nil
	} else if err != nil {
		return fmt.Errorf("while opening remote config file: %s", err)
	}
	defer f.Close()

	// read file contents to config struct
	cSys, err := remote.ReadFrom(f)
	if err != nil {
		return fmt.Errorf("while parsing remote config data: %s", err)
	}

	// sync cUsr with system config cSys
	return cUsr.SyncFrom(cSys)
}

// RemoteUse sets remote to use
func RemoteUse(usrConfigFile, name string, global, exclusive bool) (err error) {
	if exclusive {
		if os.Getuid() != 0 {
			return fmt.Errorf("unable to set endpoint as exclusive: not root user")
		}
		global = true
		usrConfigFile = remote.SystemConfigPath
	}

	// system config should be world readable
	perm := os.FileMode(0o600)
	if global {
		perm = os.FileMode(0o644)
	}

	// opening config file
	file, err := os.OpenFile(usrConfigFile, os.O_RDWR|os.O_CREATE, perm)
	if err != nil {
		return fmt.Errorf("while opening remote config file: %s", err)
	}
	defer file.Close()

	// read file contents to config struct
	c, err := remote.ReadFrom(file)
	if err != nil {
		return fmt.Errorf("while parsing remote config data: %s", err)
	}

	if !global {
		if err := syncSysConfig(c); err != nil {
			return err
		}
	}

	if err := c.SetDefault(name, exclusive); err != nil {
		return err
	}

	// truncating file before writing new contents and syncing to commit file
	if err := file.Truncate(0); err != nil {
		return fmt.Errorf("while truncating remote config file: %s", err)
	}

	if n, err := file.Seek(0, io.SeekStart); err != nil || n != 0 {
		return fmt.Errorf("failed to reset %s cursor: %s", file.Name(), err)
	}

	if _, err := c.WriteTo(file); err != nil {
		return fmt.Errorf("while writing remote config to file: %s", err)
	}

	if err := file.Sync(); err != nil {
		return fmt.Errorf("failed to flush remote config file %s: %s", file.Name(), err)
	}

	return nil
}
