# Twitch livestreamer with VLC

Watch twitch livestreams with VLC media player.

# Requirements
  - [VLC Media Player](https://www.videolan.org/vlc/index.html)
  - [Livestreamer Package](https://github.com/chrippa/livestreamer)
  
# Installation with Homebrew for macOS

  `brew install livestreamer; brew cask install vlc`

# Twitch.tv OAUTH token

You must first obtain a token for twitch with the following command.

 `livestreamer --twitch-oauth-authenticate`
 
*Copy this token for later!*

# Using the twitch.sh shell script

Edit the twitch.sh shell script and add in your OAUTH token for your twitch.tv account.

Then make it executable with:
  
  `chmod 755 twitch.sh`
  
# Parameters

* $1 is the stream name on twitch.tv
* $2 is the stream quality - audio, low, medium, high, best, or specific like I mention below.

An example usage from the command line is as follows
  
  `twitch.sh twitchpresents best`
  
  `twitch.sh lirik 900p60`
  
  `twitch.sh monstercat audio`
 
# NOTES

For some reason using "best" as argument $2 (Which is the quality parameter for livestreamer)
maxes at 720p and doesn't accommodate higher qualities such as 720p60, 900p60, 1080p, 1080p60, etc,
so if the streamer supports higher, specify that higher quality.
