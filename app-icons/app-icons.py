#!/usr/bin/env python3
# -*- coding: utf-8 -*-

'''This script replaces app icons by custom ones.

The script assumes the icons are in the same directory of this file. Icon files
should have the ".icns" extension.

If you need to convert a PNG image you can use the png2icns package
(https://www.npmjs.com/package/png2icns). It expects a 1024x1024 png image
as input.

Example::

    $ png2icns -o name.icns name.png

'''

from os import path, system
from time import time


BACKUP_DIR = './.backup'

# Each array item should be a dictionary with the following keys:
# app_name: App name (used only for logging)
# app_path: App path with ".app" extension
# icon_file: Name of the icon file inside app's resource folder
# custom_icon_file: Name of the custom icon file
ICONS_LIST = [
    {
        'app_name': 'Battle Net',
        'app_path': '/Applications/Battle.net.app',
        'icon_file': 'default.icns',
        'custom_icon_file': 'battlenet.icns'
    },
    {
        'app_name': 'Hearthstone',
        'app_path': '/Applications/Hearthstone/Hearthstone.app',
        'icon_file': 'PlayerIcon.icns',
        'custom_icon_file': 'hearthstone.icns'
    },
    {
        'app_name': 'Docker',
        'app_path': '/Applications/Docker.app/Contents/MacOS/Docker Desktop.app',
        'icon_file': 'Docker Desktop.icns',
        'custom_icon_file': 'docker-desktop.icns'
    },
    {
        'app_name': 'MongoDB Compass',
        'app_path': '/Applications/MongoDB Compass Community.app',
        'icon_file': 'electron.icns',
        'custom_icon_file': 'mongodb-compass.icns'
    },
    {
        'app_name': 'Github Desktop',
        'app_path': '/Applications/Github Desktop.app',
        'icon_file': 'electron.icns',
        'custom_icon_file': 'github-desktop.icns'
    },
    {
        'app_name': 'Notion',
        'app_path': '/Applications/Notion.app',
        'icon_file': 'Notion.icns',
        'custom_icon_file': 'notion.icns'
    }
]

def backup_icon(icon_path, backup_file):
    '''Create a backup of the original icon file.

    Args:
        icon_path (str): original icon path
        backup_file (str): backup's file name
    '''
    backup_path = path.join(BACKUP_DIR, backup_file)

    # Create backup folder if necessary
    if not path.isdir(BACKUP_DIR):
        system('mkdir "{}"'.format(BACKUP_DIR))

    if not path.isfile(backup_path):
        system('cp "{}" "{}"'.format(icon_path, backup_path))


def update_icon(app_path, icon_file, custom_icon_file):
    '''Copy custom icon file to the corresponding app folder.

    Args:
        app_path (str): app's root directory
        icon_file (str): icon's file name
        custom_icon_file (str): custom icon's file name
    '''

    icon_path = '{}/Contents/Resources/{}'.format(app_path, icon_file)
    custom_icon_path = './{}'.format(custom_icon_file)

    if path.isfile(icon_path):
        backup_icon(icon_path, custom_icon_file)
        system('cp "{}" "{}"'.format(custom_icon_path, icon_path))
        system('touch "{}"'.format(app_path))


def main():
    for obj in ICONS_LIST:
        print('Updating {} icon'.format(obj['app_name']))
        update_icon(obj['app_path'], obj['icon_file'], obj['custom_icon_file'])

    system('killAll Finder && killAll Dock')


if __name__ == "__main__":
    main()
