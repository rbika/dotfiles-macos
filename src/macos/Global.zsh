#!/usr/bin/env zsh

# Disable wallpaper tinting in windows
defaults write -g AppleReduceDesktopTinting -bool yes

# Show scroll bars only when scrolling
defaults write NSGlobalDomain AppleShowScrollBars -string WhenScrolling
