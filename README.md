# Development Environment Setup (macOS)

Steps to set up a new macOS machine  
Updated for macOS Monterey

## SSH key

Generate a SSH key

```
ssh-keygen -t ed25519 -C "rbmbika@gmail.com"
ssh-add ~/.ssh/id_ed25519
```

To copy the public key to your clipboard run

```
pbcopy < ~/.ssh/id_ed25519.pub
```

## Terminal tools

- [Homebrew](https://brew.sh/) - Package manager for macOS
- [CocoaPods](https://cocoapods.org/) - Dependency manager for Swift 
- [nvm](https://github.com/creationix/nvm#installation-and-update) - Node Version Manager

- Download git-prompt script:

  ```
  curl -fsSo ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
  ```

## Config files

- Clone this repo:

  ```
  git clone git@github.com:rbika/dotfiles-macos.git
  ```

- Change directory

  ```
  cd dotfiles
  ```

- Create symlinks:
  ```
  ln -s $(pwd)/src/zsh/.zshrc ~/.zshrc
  ln -s $(pwd)/src/git/.gitconfig ~/.gitconfig
  ln -s $(pwd)/src/vim/.vimrc ~/.vimrc
  ln -s $(pwd)/src/vim/.vim ~/.vim
  ```

## System preferences

### Mission Control

- Hot Corners
  - Top Right: Mission Control
  - Bottom Right: Application Window
  - Bottom Left: Desktop

### Sounds

- Set alert sound to "Bubble"

### Keyboard

- Set key repeat to "Fast"
- Set delay until repeat to "Short"
- In Modifier Keys set Caps Lock to Control
- Shortcuts → Mission Control
  - Show Desktop: Option+D
  - Move left a space: Option+1
  - Move right a space: Option+2

### Extra configs

- Disable font smoothing:
  ```
  defaults -currentHost write -g AppleFontSmoothing -int 0
  ```

## Apps

Apps can be installed running:

```
brew bundle
```

See the `Brewbundle` file for the list of apps.

Custom app icons can be found inside `/src/app-icons`.

### VS Code

- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Git Blame](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame)

### iTerm2

- Copy the `auto_dark_mode.py` script the iTerm's folder:

  ```
  cp -p ./src/iterm2/auto_dark_mode.py Library/Application\ Support/iTerm2/Scripts/AutoLaunch
  ```
