#!/usr/bin/env zsh
# Updates system and all developer tools.

# pre-sudo just incase it's needed.
sudo -v;
printf "%$(tput cols)s\n"|tr " " "─"

# system update
echo "Updating macOS"
softwareupdate -ia;
printf "%$(tput cols)s\n"|tr " " "─"

# homebrew
echo "Updating homebrew"
# Brew doctor and cask doctor to check for issues before updates/upgrades
brew -v doctor; brew cask doctor

# Brew update and upgrade packages
brew -v update; brew -v update; brew upgrade

# Remove downloads from cache
brew -v cleanup -s; brew -v cask cleanup;

# Prune links that no longer exist
brew -v prune

printf "%$(tput cols)s\n"|tr " " "─"

# gems
echo "Updating ruby gems"
gem update --system;
gem update;
gem cleanup;
printf "%$(tput cols)s\n"|tr " " "─"

echo "Updating RVM"
rvm get stable;
printf "%$(tput cols)s\n"|tr " " "─"

# node, nvm, npm
echo "Updating NPM"
npm install npm -g && npm update -g;
printf "%$(tput cols)s\n"|tr " " "─"

# atom, apm
echo "Updating Atom's APM packages"
apm update && apm upgrade;
printf "%$(tput cols)s\n"|tr " " "─"

# tldr
echo "Updating tldr"
tldr -u
printf "%$(tput cols)s\n"|tr " " "─"

exit 0
