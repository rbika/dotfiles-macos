# Development Environment Setup (macOS)

Steps to set up a new macOS machine  
Updated for macOS Sequoia

## SSH key

Generate an SSH key

```
ssh-keygen -t ed25519 -C "rbmbika@gmail.com"
ssh-add ~/.ssh/id_ed25519
```

Add the key to your Github account. To copy the public key to your clipboard run:

```
pbcopy < ~/.ssh/id_ed25519.pub
```

## Terminal tools

- [Homebrew](https://brew.sh/) - Package manager for macOS
- [nvm](https://github.com/creationix/nvm#installation-and-update) - Node Version Manager
- Download git-prompt script:
  ```
  curl -fsSo ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
  ```

## Config files

- Clone this repo:

  ```
  git clone git@github.com:rbika/dotfiles-macos.git dotfiles
  ```

- Change directory

  ```
  cd dotfiles
  ```

- Create symlinks:
  ```
  ln -s $(pwd)/src/zsh/.zshrc ~/.zshrc
  ln -s $(pwd)/src/zsh/.hushlogin ~/.hushlogin
  ln -s $(pwd)/src/git/.gitconfig ~/.gitconfig
  mkdir ~/.config && ln -s $(pwd)/src/nvim ~/.config/nvim
  ```

## Apps

Apps can be installed running:

```
brew bundle --file=./src/homebrew/Brewfile
```

See the `src/homebrew/Brewfile` for the list of apps.

Custom app icons can be found inside `/src/app-icons`.

### Finder

Delete all `.DS_Store` files so when setting view options, they are applied to all folders:

```
cd ~ && find . -name '.DS_Store' -type f -delete
```

### VS Code

- Install essential extensions:
  - [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
  - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
  - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - [Git Blame](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame)
  - [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
  - [Brazilian Portuguese - Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker-portuguese-brazilian)
  - [Nord Theme](https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code)
  - [Pretty TypeScript Errors](https://marketplace.visualstudio.com/items?itemName=yoavbls.pretty-ts-errors)
- Create symlinks for the configuration files:
  ```
  ln -s $(pwd)/src/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
  ln -s $(pwd)/src/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
  ```

### iTerm2

- Download and install the [Nord Dark](https://github.com/rbika/iterm2-nord-dark) iTerm2 theme.
- Copy the `auto_dark_mode.py` script to the iTerm's folder:

  ```
  cp -p ./src/iterm2/auto_dark_mode.py ~/Library/Application\ Support/iTerm2/Scripts/AutoLaunch
  ```

### Karabiner Elements

- Copy config file to Karabiner's folder:
  ```
  cp ./src/karabiner/karabiner.json ~/.config/karabiner/
  ```

## System preferences

### Hot Corners Shortcuts

- Top Right: Mission Control
- Bottom Right: Application Window
- Bottom Left: Desktop

### Keyboard

- Set key repeat to "Fast"
- Set delay until repeat to "Short"
- Shortcuts
  - Show Desktop: Option+D
  - Mission Control
    - Move left a space: Option+1
    - Move right a space: Option+2

### Extra configs

- Disable font smoothing:
  ```
  defaults -currentHost write -g AppleFontSmoothing -int 0
  ```
