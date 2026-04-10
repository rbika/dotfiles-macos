# Development Environment Setup (macOS)

Steps to set up a new macOS machine.  
Updated for macOS Tahoe.

## SSH key

Generate an SSH key:

```zsh
ssh-keygen -t ed25519 -C "rbmbika@gmail.com"
ssh-add ~/.ssh/id_ed25519
```

Add the key to your Github account. To copy the public key to your clipboard run:

```zsh
pbcopy < ~/.ssh/id_ed25519.pub
```

## Terminal tools

- [Homebrew](https://brew.sh/) - Package manager for macOS
- [Node.js](https://nodejs.org/en/download) - Nodejs with nvm
- Download git-prompt script:
  ```
  curl -fsSo ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
  ```

## Config files

- Clone this repo:

  ```zsh
  cd && mkdir Dev && cd Dev
  git clone git@github.com:rbika/dotfiles-macos.git dotfiles && cd dotfiles
  ```

- Create symlinks:

  ```zsh
  ln -s $(pwd)/src/zsh/.zshrc ~/.zshrc
  ln -s $(pwd)/src/zsh/.hushlogin ~/.hushlogin
  ln -s $(pwd)/src/git/.gitconfig ~/.gitconfig

  mkdir ~/.config
  ln -s $(pwd)/src/nvim ~/.config/nvim
  ln -s $(pwd)/src/ghostty ~/.config/ghostty
  ```

## Apps

Apps can be installed running:

```zsh
brew bundle --file=./src/homebrew/Brewfile
```

See the `src/homebrew/Brewfile` for the list of apps.  
Custom app icons can be found inside `/src/app-icons`.

### Raycast

Go to Settings → Advanced → Import/Export and import `Raycast.rayconfig`.

### Cursor

Create symlink for settings and keybindings:

```zsh
ln -s $(pwd)/src/cursor/settings.json ~/Library/Application\ Support/Cursor/User/settings.json
ln -s $(pwd)/src/cursor/keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json
```

Install extensions:

```
cursor --install-extension arcticicestudio.nord-visual-studio-code
cursor --install-extension bradlc.vscode-tailwindcss
cursor --install-extension dbaeumer.vscode-eslint
cursor --install-extension esbenp.prettier-vscode
cursor --install-extension pkief.material-icon-theme
cursor --install-extension streetsidesoftware.code-spell-checker
cursor --install-extension yoavbls.pretty-ts-errors
```

### Karabiner Elements

Copy config file to Karabiner's folder:

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

- Keyboard Shortcuts
- Show Desktop: Option+D
  - Mission Control
    - Move left a space: Option+1
    - Move right a space: Option+2
  - Spotlight
    - Show Spotlight Search: Disable it
