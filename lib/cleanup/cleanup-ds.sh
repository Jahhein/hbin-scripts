#!/bin/bash
# clean .DS_Store files

sudo find . -type f -name '*.DS_Store' -ls -delete

exit 0