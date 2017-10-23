#!/usr/bin/env zsh
# ---
# Author:
#   Jacob A. Hein (Jahhein)
#
# Operating System:
#   Mac OS X
#
# Description:
#   Verify Apple's code signature on all files/directories in current directory.

for x in *
do
  codesign -vvv --display --deep-verify $x;
  printf "%$(tput cols)s\n"|tr " " "─"
done

exit 0