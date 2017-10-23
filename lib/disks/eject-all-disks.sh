#!/usr/bin/env zsh
# ------------------------------------------------------------------
# [Author]: Jacob Hein
#
# [Title]: eject-all-disks.sh
#
# [Description]: Ejects all mounted volumes
# ------------------------------------------------------------------

VERSION=0.1.0
SUBJECT=eject-all-disks.sh

diskutil eject /Volumes/*

exit 0
