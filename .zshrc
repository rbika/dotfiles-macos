# Antigen
# -------

source ~/.antigen.zsh
antigen bundle zsh-users/zsh-completions
antigen apply

# Prompt
# ------

source ~/.git-prompt.sh

# setopt PROMPT_SUBST; PS1='%K{blue}%F{black}%~%f%k%K{yellow}%F{blue}▶︎%f%F{black}$(__git_ps1 " %s")%k%f%F{yellow}▶︎%f '
setopt PROMPT_SUBST; PS1='%F{cyan}%~%f%F{black}%B$(__git_ps1 "  %s")%b%f \$ '

# Completion
# ----------

setopt auto_menu
setopt always_to_end
setopt complete_in_word
unsetopt flow_control
unsetopt menu_complete
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'


# History
# -------

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory

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

# References
#   http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
