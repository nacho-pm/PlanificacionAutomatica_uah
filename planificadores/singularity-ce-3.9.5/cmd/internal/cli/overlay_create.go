package cli

import (
	"github.com/spf13/cobra"
	"github.com/sylabs/singularity/docs"
	"github.com/sylabs/singularity/internal/app/singularity"
	"github.com/sylabs/singularity/pkg/cmdline"
	"github.com/sylabs/singularity/pkg/sylog"
)

var (
	overlaySize int
	overlayDirs []string
)

// -s|--size
var overlaySizeFlag = cmdline.Flag{
	ID:           "overlaySizeFlag",
	Value:        &overlaySize,
	DefaultValue: 64,
	Name:         "size",
	ShortHand:    "s",
	Usage:        "size of the EXT3 writable overlay in MiB",
}

// --create-dir
var overlayCreateDirFlag = cmdline.Flag{
	ID:           "overlayCreateDirFlag",
	Value:        &overlayDirs,
	DefaultValue: []string{},
	Name:         "create-dir",
	Usage:        "directory to create as part of the overlay layout",
}

// OverlayCreateCmd is the 'overlay create' command that allows to create writable overlay.
var OverlayCreateCmd = &cobra.Command{
	Args: cobra.ExactArgs(1),
	RunE: func(cmd *cobra.Command, args []string) error {
		if err := singularity.OverlayCreate(overlaySize, args[0], overlayDirs...); err != nil {
			sylog.Fatalf(err.Error())
		}
		return nil
	},
	DisableFlagsInUseLine: true,

	Use:     docs.OverlayCreateUse,
	Short:   docs.OverlayCreateShort,
	Long:    docs.OverlayCreateLong,
	Example: docs.OverlayCreateExample,
}
