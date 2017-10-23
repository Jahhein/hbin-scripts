#!/bin/bash
# Hides dotfiles from Finder view.

defaults write com.apple.finder AppleShowAllFiles NO

killall Finder

echo "Dotfiles now hidden from Finder."

exit 0
