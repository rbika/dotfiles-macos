# Reference: https://zsh.sourceforge.io/Guide/zshguide.html

# -----------------------------------------------
# Prompt
# -----------------------------------------------

source ~/.git-prompt.sh
setopt PROMPT_SUBST
PROMPT='%F{blue}%~%f%F{black}$(__git_ps1 " (%s)")%f '
RPROMPT='%F{black}%B%*%b%f'

# -----------------------------------------------
# Completion
# -----------------------------------------------

# start zsh completion system
autoload -Uz compinit && compinit

# Case insensitive and fuzzy tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# -----------------------------------------------
# History
# -----------------------------------------------

# history size within one session
HISTSIZE=1000

# history size of HISTFILE
SAVEHIST=1000

# history file
HISTFILE=~/.zsh_history

# appends history instead of overwrite it
setopt APPEND_HISTORY

# appends commands as they are entered
setopt INC_APPEND_HISTORY

# removes dups in the history list, keeping the newly added one
setopt HIST_IGNORE_ALL_DUPS

# lines beginning with a space don't go into the history
setopt HIST_IGNORE_SPACE

# -----------------------------------------------
# NVM
# -----------------------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# -----------------------------------------------
# Aliases
# -----------------------------------------------

alias ls="ls -Gh"
alias la="ls -A"
alias ll="ls -l"
alias lla="ls -lA"
alias ..="cd .."
alias cp="cp -i"
alias mv="mv -i"
alias mk="mkdir -p"

alias path="echo -e $PATH | tr ':' '\n'"
alias grep="grep -n --color=auto"
alias gitg='fork'
alias vim='nvim'

# -----------------------------------------------
# LESS
# -----------------------------------------------

# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-R

# -----------------------------------------------
# Functions
# -----------------------------------------------

# Creates a new directory and enters it
function mkcd() {
  mkdir $1; cd $1;
}

# Opens a given directory or current one if no args are provided
function op() {
  if [ $# -eq 0 ]; then
    open .;
  else
    open $1;
  fi;
}

# -----------------------------------------------
# Local config
# -----------------------------------------------

# loads local config if it exists
if [ -f ~/.local_zshrc ]; then
    source ~/.local_zshrc
fi
