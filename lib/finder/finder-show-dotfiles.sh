#!/bin/bash
# Show dotfiles in finder view

defaults write com.apple.finder AppleShowAllFiles YES

killall Finder

echo "Dotfiles now shown in Finder."

exit 0
