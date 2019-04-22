# Git
# ---
test -e ~/.git-prompt.sh && source ~/.git-prompt.sh
test -e ~/.git-completion.bash && source ~/.git-completion.bash

# General exports
# ---------------
export HISTSIZE=2000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
export PS1="\[\e[0;36m\]\w\[\e[0m\] \[\e[0;34m\]\$(__git_ps1 '(%s) ')\[\e[0m\]\$ "

# NVM
# ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Aliases
# -------
alias ls="ls -Gh"
alias la="ls -A"
alias ll="ls -l"
alias lla="ls -lA"
alias ..="cd .."
alias cp="cp -i"
alias mv="mv -i"
alias oc="open ."
alias op="open"
alias mk="mkdir -p"
alias mkcd="_mkcd"
alias path="echo -e $PATH | tr ':' '\n'"
alias grep="grep -n --color=auto"

alias nr='npm run'
alias ns='npm start'
alias ni='npm install'
alias gitg='fork'
alias dcompose='docker-compose'

# Functions
# ---------
function _mkcd() { mkdir $1; cd $1; }
