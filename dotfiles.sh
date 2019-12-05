#!/bin/zsh

read -p "Symlinks for the following files will be created:
zshrc, gitconfig, inputrc, sqliterc and vimrc.

Existing files will be moved to \"$(pwd)/.backup\". Continue? (y/n) " -n 1;
echo "";

if [[ $REPLY == [Yy] ]]; then
  now=$(date +"%Y%m%d_%H%M%S")

  create_symlink() {
    if [[ -e ~/.$1 && ! -L ~/.$1 ]]; then
      mv ~/.$1 .backup/$1_$now
    fi

    if [ ! -L ~/.$1 ]; then
      ln -s $(pwd)/$1 ~/.$1
    fi
  }

  # Create backup folder if necessary
  if [ ! -d .backup ]; then
    mkdir .backup
  fi

  # Create symlinks
  create_symlink zshrc
  create_symlink gitconfig
  create_symlink inputrc
  create_symlink sqliterc
  create_symlink vimrc

  # Download git-prompt script
  curl -fsSo ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

  echo "Done =)"

else
  echo "Aborted."
fi
