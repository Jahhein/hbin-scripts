#!/usr/bin/env zsh
# Kills chrome & helpers

ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill

exit 0
