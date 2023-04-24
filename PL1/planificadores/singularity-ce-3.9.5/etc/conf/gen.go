// Copyright (c) 2018-2021, Sylabs Inc. All rights reserved.
// This software is licensed under a 3-clause BSD license. Please consult the
// LICENSE.md file distributed with the sources of this project regarding your
// rights to use or distribute this software.

package main

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/sylabs/singularity/internal/pkg/buildcfg"
	"github.com/sylabs/singularity/pkg/util/singularityconf"
)

func main() {
	switch len(os.Args) {
	case 3:
		inPath := filepath.Clean(os.Args[1])
		outPath := filepath.Clean(os.Args[2])
		genConf("", inPath, outPath)
	case 2:
		outPath := filepath.Clean(os.Args[1])
		genConf("", "", outPath)
	default:
		fmt.Println("Usage: go run ... [infile] <outfile>")
		os.Exit(1)
	}
}

// genConf produces a singularity.conf file at out. It retains set configurations from in (leave blank for default)
func genConf(tmpl, in, out string) {
	inFile := in
	// Parse current singularity.conf file into c
	if _, err := os.Stat(in); os.IsNotExist(err) {
		inFile = ""
	}
	c, err := singularityconf.Parse(inFile)
	if err != nil {
		fmt.Printf("Unable to parse singularity.conf file: %s\n", err)
		os.Exit(1)
	}

	// Set default external paths from build time values
	c.CryptsetupPath = buildcfg.CRYPTSETUP_PATH
	c.GoPath = buildcfg.GO_PATH
	c.LdconfigPath = buildcfg.LDCONFIG_PATH
	c.MksquashfsPath = buildcfg.MKSQUASHFS_PATH
	c.NvidiaContainerCliPath = buildcfg.NVIDIA_CONTAINER_CLI_PATH
	c.UnsquashfsPath = buildcfg.UNSQUASHFS_PATH

	newOutFile, err := os.OpenFile(out, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0o644)
	if err != nil {
		fmt.Printf("Unable to create file %s: %v\n", out, err)
	}
	defer newOutFile.Close()

	if err := singularityconf.Generate(newOutFile, tmpl, c); err != nil {
		fmt.Printf("Unable to generate config file: %v\n", err)
		os.Exit(1)
	}
}
