#!/usr/bin/env zsh
# All-in-one homebrew update, upgrade, prune, and doctor.

# Brew doctor and cask doctor to check for issues before updates/upgrades
brew -v doctor; brew cask doctor
printf "%$(tput cols)s\n"|tr " " "─"

# Brew update and upgrade packages
brew -v update; brew -v update; brew upgrade
printf "%$(tput cols)s\n"|tr " " "─"

# Remove downloads from cache
brew -v cleanup -s; brew -v cask cleanup;
printf "%$(tput cols)s\n"|tr " " "─"

# Prune links that no longer exist
brew -v prune
printf "%$(tput cols)s\n"|tr " " "─"

exit 0
