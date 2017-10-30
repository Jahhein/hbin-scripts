#!/usr/bin/env bash
# Livestreamer shell script

$TWITCH_TOKEN="PUT YOUR OAUTH TOKEN BETWEEN THE DOUBLE QUOTES"

livestreamer --twitch-oauth-token $TWITCH_TOKEN https://www.twitch.tv/"$1" $2 > /dev/null 2>&1 &

exit 0
