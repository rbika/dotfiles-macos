#!/usr/bin/env zsh

# Disable wallpaper click to reveal desktop
defaults write com.apple.WindowManager EnableStandardClickToShowDesktop -bool false

# Drag window to screen edges to tile
defaults write com.apple.WindowManager EnableTilingByEdgeDrag -int 1

# Hold option key while dragging window to tile
defaults write com.apple.WindowManager EnableTilingOptionAccelerator -int 1

# Drag window to menu bar to fill screen
defaults write com.apple.WindowManager EnableTopTilingByEdgeDrag -int 1

# TODO: Double click a window's title bar to - Fill

killall WindowManager
