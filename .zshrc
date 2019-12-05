# Prompt
# ------

source ~/.git-prompt.sh

# Reference: http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
setopt PROMPT_SUBST; PS1='%F{cyan}%~%f%F{blue}$(__git_ps1 " | %s")%f \$ '

# Antigen
# -------

# source ~/.antigen.zsh
# Add plugins here
# antigen apply

# Completion
# ----------

# Case-insensitive (all), partial-word, and then substring completion
if zstyle -t ':prezto:module:completion:*' case-sensitive; then
  zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
  setopt CASE_GLOB
else
  zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
  unsetopt CASE_GLOB
fi

# History config
# --------------

HISTFILE=~/.zsh_history
HISTSIZE=5000 # Lines of history to keep in memory
SAVEHIST=5000 # Entries to save to disk
HISTDUP=erase # Erase duplicates in the history file
setopt appendhistory # Append history to the history file (no overwriting)
setopt sharehistory # Share history across terminals
setopt incappendhistory # Immediately append to the history file

# NVM
# ---

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Aliases
# -------

alias ls="ls -Gh"
alias la="ls -A"
alias ll="ls -l"
alias lla="ls -lA"
alias ..="cd .."
alias cp="cp -i"
alias mv="mv -i"
alias op="open"
alias mk="mkdir -p"
alias mkcd="_mkcd"
alias path="echo -e $PATH | tr ':' '\n'"
alias grep="grep -n --color=auto"
alias gitg='fork'
alias dockerc='docker-compose'

# Functions
# ---------

function _mkcd() { mkdir $1; cd $1; }
