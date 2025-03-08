#!/usr/bin/env zsh

# Set the icon size of Dock items
defaults write com.apple.dock tilesize -int 48

# Disable recent apps in Dock
defaults write com.apple.dock show-recents -bool false

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Do not reorder Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Don't enter Mission Control when dragging windows to the top of screen
defaults write com.apple.dock enterMissionControlByTopWindowDrag -int 0

# Dock hot corners
# 
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen
# 14: Quick note
#
# Show current settings
#   defaults read com.apple.dock | grep wvous

# Top right screen corner
defaults write com.apple.dock wvous-tr-corner -int 2

# Bottom right screen corner
defaults write com.apple.dock wvous-br-corner -int 3

# Bottom left corner
defaults write com.apple.dock wvous-bl-corner -int 4

killall Dock
