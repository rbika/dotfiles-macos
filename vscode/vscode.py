#!/usr/bin/env python3
# -*- coding: utf-8 -*-

'''Creates symbolic links for VSCode's config files.

Existing files will be moved to a ".backup" folder in the same directory of
this script. Symbolic links for the following files will be created:

    - .settings.json
    - .keybindings.json

'''

from os import system
from time import time
from pathlib import Path


HOME_DIR = str(Path.home())
VSCODE_DIR = str(Path(HOME_DIR, 'Library/Application Support/Code/User/'))
CURRENT_DIR = str(Path.cwd())


def backup_file(file):
    '''Create a backup of the original file.

    Args:
        file (str): file name
    '''

    now = int(time())
    src_path = Path(VSCODE_DIR, file)
    dest_path = Path(CURRENT_DIR, '.backup', f'{file}_{now}')

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
    dest_path = Path(VSCODE_DIR, file)

    if Path.is_file(dest_path) and not Path.is_symlink(dest_path):
        backup_file(file)

    print(dest_path, Path.is_symlink(dest_path))
    if not Path.is_symlink(dest_path):
        system(f'ln -s {src_path} {dest_path}')


def main():
    # Create symlinks
    create_symlink('settings.json')
    create_symlink('keybindings.json')


if __name__ == "__main__":
    main()
