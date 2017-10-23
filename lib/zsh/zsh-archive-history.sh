#!/usr/bin/env zsh
# ------------------------------------------------------------------
# [Author]: Jacob Hein
# Copyright 2017 Jacob Hein. All Rights Reserved.
#
# [Title]: zsh-archive-history.sh
#
# [Description]:
#   Backs old zsh history to new date stamped file at
#   $ZSH_CONFIG location.
# ------------------------------------------------------------------

VERSION=0.1.0
SUBJECT=zsh-archive-history.sh

# backup and date previos history with paranoid permissions.
mv $HISTFILE $ZHISTORYDIR/zsh_history-$(date "+%Y-%m-%d-%H:%M:%S")
chmod 600 $ZHISTORYDIR/zsh_history*

echo "ZSH history backed up"

exit 0
