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

## Tools

- [Homebrew](https://brew.sh/) - Package manager for macOS
- [nvm](https://github.com/creationix/nvm#installation-and-update) - Node Version Manager

## Config files and scripts

- Clone this repo:

  ```
  git clone git@github.com:rbika/dotfiles-macos.git ./dotfiles
  ```

- Change directory

  ```
  cd dotfiles
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
  ln -s $(pwd)/.vim ~/.vim
  ```

## Apps

Apps can be installed running:

```
brew bundle
```

See the `Brewbundle` file for the list of apps.

## VS Code Plugins

- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Git Blame](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame)

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

## Extra configs

- Disable font smoothing:
  ```
  defaults -currentHost write -g AppleFontSmoothing -int 0
  ```

## TODO

- Add iTerm2 config file
