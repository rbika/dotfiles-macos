#!/usr/bin/env zsh

# Disable font smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0

# Disable wallpaper tinting in windows
defaults write -g AppleReduceDesktopTinting -bool yes

# Show scroll bars only when scrolling
defaults write NSGlobalDomain AppleShowScrollBars -string WhenScrolling

# Enable zoom keyboard shortcuts
defaults write com.apple.universalaccess closeViewHotkeysEnabled -bool true

# Enable scroll gesture with modifier key
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
