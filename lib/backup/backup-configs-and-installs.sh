#!/usr/bin/env zsh
# ------------------------------------------------------------------
# [Author]: Jacob Hein
#
# [Title]: backup-configurations.sh
#
# [Description]:
# Backs up all configuration files to local settings repository.
# ------------------------------------------------------------------

VERSION=0.1.0
SUBJECT=backup-configurations.sh

# Homebrew installs
brew list --full-name > $CONFIGURATIONS/installs/brew-list.txt
brew cask list > $CONFIGURATIONS/installs/brew-cask-list.txt

# Atom's atom package manager (apm) list
apm list > $CONFIGURATIONS/installs/atom-apm-list.txt

# Python's pip installs
# TODO: Depreciated?
#pip list > $CONFIGURATIONS/installs/pip-list.txt
pip3 list > $CONFIGURATIONS/installs/pip3-list.txt
pip3.6 list > $CONFIGURATIONS/installs/pip3.6-list.txt

# Ruby gems list
gem list > $CONFIGURATIONS/installs/gem-list.txt

# node version manager
nvm ls > $CONFIGURATIONS/installs/nvm-list.txt

exit 0
