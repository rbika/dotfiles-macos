Development Environment Setup (macOS)
=====================================

Here are the steps I follow to get my development environment set up on a new mac

Essential Apps
--------------

Download and install the following apps:

- [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12) - Needed for command line tools to work properly
- [Google Chrome](https://www.google.com/chrome) - Main browser
- [Rectangle](https://rectangleapp.com/) - Window manager
- [Spotify](https://www.spotify.com/br/download/other) - Music streaming
- [iTerm2](https://www.iterm2.com) - macOS's terminal replacement
- [VS Code](https://code.visualstudio.com) - Main text editor
- [Github Desktop](https://desktop.github.com/) - Git client
- [Figma](https://www.figma.com/) - Design tool

Google Chrome Extensions
------------------------

- [Grammarly](https://chrome.google.com/webstore/detail/grammarly-for-chrome/kbfnbcaeplbcioakkpcpgfkobkghlhen?hl=en)
- [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en)

VS Code Plugins
---------------

- [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
- [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Git Blame](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)

Tools
-----

- [Homebrew](https://brew.sh/) - Package manager for macOS
- [nvm](https://github.com/creationix/nvm#installation-and-update) - Node Version Manager
- [Antigen](https://github.com/zsh-users/antigen) - zsh plugin manager
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

Config files and scripts
------------------------

- Clone this repo:
    ```
    git clone git@gitlab.com:rbika/dotfiles.git ~/.dotfiles
    ```

- Change directory
    ```
    cd ~/.dotfiles
    ```

- Download git-prompt script:
    ```
    curl -fsSo ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
    ```

- Create symlinks:
    ```
    ln -s .zshrc ~/.zshrc
    ln -s .gitconfig ~/.gitconfig
    ln -s .vimrc ~/.vimrc
    ln -s settings.json ~/Library/Application Support/Code/User/settings.json
    ln -s keybindings.json ~/Library/Application Support/Code/User/keybindings.json

    ```

Custom App Icons
----------------

- Change directory
    ```
    cd ~/.dotfiles/app-icons
    ```

- Run dotfiles script
    ```
    ./app-iconts.py
    ```

- Create symlink for the launchd plist file
    ```
    ln -s ~/.dotfiles/app-icons/local.app-icons.plist ~/Library/LaunchAgents 
    ```

Extra
-----

- Remap Caps Lock to Control: Change this on System Preferences -> Keyboard -> Modifier Keys


TODO
----

- Add iTerm2 config file
