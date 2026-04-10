#!/usr/bin/env zsh

# Disable font smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0

# Disable wallpaper tinting in windows
defaults write -g AppleReduceDesktopTinting -bool yes

# Show scroll bars only when scrolling
defaults write NSGlobalDomain AppleShowScrollBars -string WhenScrolling
