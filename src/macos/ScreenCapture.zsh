#!/usr/bin/env zsh

# Do not display the thumbnail after taking a screenshot
defaults write com.apple.screencapture "show-thumbnail" -bool "false"

# Set default screenshot location
mkdir ~/Screen\ Captures
defaults write com.apple.screencapture "location" -string "~/Screen Captures"

killall SystemUIServer
