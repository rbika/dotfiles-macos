#!/usr/bin/env python3
# -*- coding: utf-8 -*-
'''Creates symlinks for home's config files.

Existing files will be moved to a ".backup" folder in the same directory of
this script. Symlinks for the following files will be created:

    - .zshrc
    - .gitconfig
    - .vimrc

'''

from os import system
from time import time
from pathlib import Path


HOME_DIR = str(Path.home())
CURRENT_DIR = str(Path.cwd())
GIT_PROMPT_URL = 'https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh'


def backup_file(file):
    '''Create a backup of the original file.

    Args:
        file (str): file name
    '''

    now = int(time())
    src_path = Path(HOME_DIR, file)
    dest_path = Path(HOME_DIR, f'{file}_{now}')

    # Create backup folder if necessary
    if not Path.is_dir(Path(CURRENT_DIR, '.backup')):
        system('mkdir .backup')

    system(f'mv {src_path} {dest_path}')


def create_symlink(file):
    '''Create a symbolic link for the config file.

    Args:
        file (str): file name
    '''

    src_path = Path(CURRENT_DIR, file)
    dest_path = Path(HOME_DIR, file)

    if Path.is_file(dest_path) and not Path.is_symlink(dest_path):
        backup_file(file)

    if not Path.is_symlink(dest_path):
        system(f'ln -s {src_path} {dest_path}')


def main():
    # Create symlinks
    create_symlink('.zshrc')
    create_symlink('.gitconfig')
    create_symlink('.vimrc')

    # Download git-prompt script
    system(f'curl -fsSo ~/.git-prompt.sh {GIT_PROMPT_URL}')


if __name__ == "__main__":
    main()
