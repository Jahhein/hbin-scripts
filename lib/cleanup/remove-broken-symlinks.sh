#!/usr/bin/env bash
# Removes broken symlinks in current directory

find -L . -name . -o -type d -prune -o -type l -exec rm {} +

exit 0
