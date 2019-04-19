#!/bin/bash

read -p "Symlinks for the following VS Code files will be created:
settings.json and keybidings.json.

Existing files will be moved to \"$(pwd)/.backup\". Continue? (y/n) " -n 1;
echo "";

if [[ $REPLY == [Yy] ]]; then
  now=$(date +"%Y%m%d_%H%M%S")

  create_symlink() {
    if [[ -e ~/Library/Application\ Support/Code/User/$1 && ! -L ~/Library/Application\ Support/Code/User/$1 ]]; then
      mv ~/Library/Application\ Support/Code/User/$1 .backup/$1_$now
    fi

    if [ ! -L ~/.$1 ]; then
      ln -s $(pwd)/$1 ~/Library/Application\ Support/Code/User/$1
    fi
  }

  # Create backup folder if necessary
  if [ ! -d .backup ]; then
    mkdir .backup
  fi

  # Create symlinks
  create_symlink settings.json
  create_symlink keybindings.json

  echo "Done =)"

else
  echo "Aborted."
fi
