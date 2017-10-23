#!/usr/bin/env bash
# -
# System OS:
#	Macintosh OS X Sierra
# 
# Sudo: 
#	Yes
# 
# Author:
#	Jacob A. Hein (Jahhein)
# 
# Description: 
# 	Rebuild's Mac OS X Sierra's Spotlight index on root drive by removing root
# 	.Spotlight-V100 folder and subcontents, then running mdutil to manage metadata 
#	stores used by spotlight and ensure volume stores are erased, metadata storeage
#	indexing is on, and then rebuilding if needed. Since /.Spotlight-V100 is removed,
#	indexing with be needed.

# remove old spotlight indexing
sudo rm -R /.Spotlight-V100

# set spotlight indexing for root volume to on and rebuild.
sudo mdutil -E -i on /

echo "Spotlight indexing will begin rebuilding metadata index on root volume."

exit 0
