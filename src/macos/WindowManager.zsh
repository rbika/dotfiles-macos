#!/usr/bin/env zsh

# Disable wallpaper click to reveal desktop
defaults write com.apple.WindowManager EnableStandardClickToShowDesktop -bool false

killall WindowManager
