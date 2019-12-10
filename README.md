Development Environment Setup (macOS)
=====================================

Here are the steps I follow to get my development environment set up on a new mac

Essential Apps
--------------

Download and install the following apps:

- [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12) - Needed for command line tools to work properly
- [Alfred](https://www.alfredapp.com) - macOS's spotlight replacement
- [Google Chrome](https://www.google.com/chrome) - Main browser
- [Magnet](http://magnet.crowdcafe.com) - Window manager
- [Spotify](https://www.spotify.com/br/download/other) - Music streaming
- [iTerm2](https://www.iterm2.com) - macOS's terminal replacement
- [VS Code](https://code.visualstudio.com) - Main text editor
- [Docker](https://www.docker.com/products/docker-desktop) - Docker for macOS
- [Fork](https://git-fork.com) - Git client

### Google Chrome Extensions

- [Grammarly](https://chrome.google.com/webstore/detail/grammarly-for-chrome/kbfnbcaeplbcioakkpcpgfkobkghlhen?hl=en)
- [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en)

### VS Code Plugins

- [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)
- [Dracula](https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula)
- [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
- [Git Blame](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Sublime Text Keymap](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)


Command Line Tools
------------------

- [Homebrew](https://brew.sh/) - Package manager for macOS
- [nvm](https://github.com/creationix/nvm#installation-and-update) - Node Version Manager
- [Antigen](https://github.com/zsh-users/antigen) - zsh plugin manager

Dotfiles
--------

The `dotfiles` directory contains my configurations files for bash, git, vim, etc. Follow the steps below to get everything working.

- Clone this repo:
    ```
    git clone git@gitlab.com:rbika/dotfiles.git ~/.dotfiles
    ```

- Change directory
    ```
    cd ~/.dotfiles
    ```

- Run dotfiles script
    ```
    ./dotfiles.sh
    ```

- Change directory
    ```
    cd vscode
    ```

- Run VS Code script
    ```
    ./vscode.sh
    ```

Extra things
------------

- Remap Caps Lock to Control: Change this on System Preferences -> Keyboard -> Modifier Keys


TODO
----

- Add iTerm2 config file
