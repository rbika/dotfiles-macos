# Antigen
# -------

source /usr/local/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-completions
antigen apply

# Prompt
# ------

source ~/.git-prompt.sh
setopt PROMPT_SUBST; PS1='%F{blue}%~%f%F{cyan}$(__git_ps1 " \uE0A0 %s")%f '

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
alias mk="mkdir -p"
alias path="echo -e $PATH | tr ':' '\n'"
alias grep="grep -n --color=auto"
alias gitg='fork'

# Functions
# ---------

# Creates a new directory and enters it
function mkcd() { 
    mkdir $1; cd $1; 
}

# Opens a given directory or current one if no args are passed
function op() {
    if [ $# -eq 0 ]; then
        open .;
    else
        open $1;
fi;
}

# Local config
# ------------

if [ -f ~/.dotfiles/.local-zshrc ]; then
    source ~/.dotfiles/.local-zshrc
fi

# References
#   Prompt: http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html