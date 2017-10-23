#!/bin/bash
# Fix homebrew directory permissions

brewdirs=(
  /usr/local/Cellar
  /usr/local/Homebrew
  /usr/local/bin
  /usr/local/include
  /usr/local/lib
  /usr/local/sbin
  /usr/local/share
  /usr/local/Frameworks
  /usr/local/lib/pkgconfig
  /usr/local/share/locale
  /usr/local/share/man
  /usr/local/opt
  /usr/local/lib/python2.7/site-packages
)

sudo chown -R $(whoami) "${brewdirs[@]}"

exit 0
