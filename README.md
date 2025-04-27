# Development Environment Setup (macOS)

Steps to set up a new macOS machine.  
Updated for macOS Sequoia.

## SSH key

Generate an SSH key:

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
  cd && mkdir Dev && cd Dev
  git clone git@github.com:rbika/dotfiles-macos.git dotfiles && cd dotfiles
  ```

- Create symlinks:

  ```
  ln -s $(pwd)/src/zsh/.zshrc ~/.zshrc
  ln -s $(pwd)/src/zsh/.hushlogin ~/.hushlogin
  ln -s $(pwd)/src/git/.gitconfig ~/.gitconfig

  mkdir ~/.config
  ln -s $(pwd)/src/nvim ~/.config/nvim
  ln -s $(pwd)/src/ghostty ~/.config/ghostty
  ```

## Apps

Apps can be installed running:

```
brew bundle --file=./src/homebrew/Brewfile
```

See the `src/homebrew/Brewfile` for the list of apps.

Wipe all apps from the Dock:

```
defaults write com.apple.dock persistent-apps -array && killall Dock
```

Custom app icons can be found inside `/src/app-icons`.

### Karabiner Elements

- Copy config file to Karabiner's folder:
  ```
  mkdir -p ~/.config/karabiner/ && cp ./src/karabiner/karabiner.json ~/.config/karabiner/
  ```

### Finder

Delete all `.DS_Store` files so when setting view options, they are applied to all folders:

```
cd ~ && find . -name '.DS_Store' -type f -delete
```

## System preferences

```
source ./src/macos/defaults.zsh
```

### General - Language and Region

- Number Format: 1,234,567.89

### Keyboard

- Shortcut
  - Mission Control
    - Show Desktop: Option+D
    - Move left a space: Option+1
    - Move right a space: Option+2
  - Spotlight
    - Show Spotlight Search: Disable it

### Extra configs

- Disable font smoothing:
  ```
  defaults -currentHost write -g AppleFontSmoothing -int 0
  ```
