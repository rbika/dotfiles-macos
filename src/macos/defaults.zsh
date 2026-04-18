#!/usr/bin/env zsh

# Reference
# 
# defaults help → Prints the help
# defaults domains → Lists all domains
# defaults read → Lists all defaults
# defaults find ${word} → Lists all entries containing word
# defaults delete ${domain} ${key} → Deletes the key from the domain

SCRIPT_PATH=$(dirname "$0")

source $SCRIPT_PATH/Dock.zsh
source $SCRIPT_PATH/Finder.zsh
source $SCRIPT_PATH/Global.zsh
source $SCRIPT_PATH/Keyboard.zsh
source $SCRIPT_PATH/ScreenCapture.zsh
source $SCRIPT_PATH/WindowManager.zsh
