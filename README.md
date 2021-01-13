Development Environment Setup (macOS)
=====================================

Here are the steps I follow to set up a new mac

Tools
-----

- [Homebrew](https://brew.sh/) - Package manager for macOS
- [nvm](https://github.com/creationix/nvm#installation-and-update) - Node Version Manager

Config files and scripts
------------------------

- Clone this repo:
    ```
    git clone git@github.com:rbika/dotfiles.git ~/.dotfiles
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
    ln -s $(pwd)/.zshrc ~/.zshrc
    ln -s $(pwd)/.gitconfig ~/.gitconfig
    ln -s $(pwd)/.vimrc ~/.vimrc
    ```

Apps
----

Apps can be installed running:

```
brew bundle
```

See the `Brewbundle` file for the list of apps.

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
- [Brewfile](https://marketplace.visualstudio.com/items?itemName=sharat.vscode-brewfile)

System Preferences
------------------

- Keyboard → Modifier Keys
    - Remap Caps Lock to Control
- Mission Control → Hot Corners
    - Top right: Mission Control
    - Bottom right: Desktop
- Accessibility → Zoom
    - Enable use scroll gestures with Control key
- Accessibility → Pointer Control → Trackpad Options
    - Enable dragging with three fingers 

TODO
----

- Add iTerm2 config file
