# Brew nvm Caveats
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Suppress zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Pretty prompt
BLUE="\[\e[36m\]"
RED="\[\e[91m\]"
DEFAULT="\[\e[m\]"
export PS1="\$([[ \$? == 0 ]] && printf $BLUE || printf $RED)[\t \W]\$ $DEFAULT"

# Pretty ls
export LSCOLORS='Exfxcxdxbxegedabagacad'

# Sample tmux split window
two_windows() {
  tmux -CC \
    new-session "true; echo Exited.; read" \; \
    split-window "true; echo Exited.; read" \;
}

# Sample tmux single window
one_window() {
  tmux -CC \
    new-session "true; echo Exited.; read" \;
}

# More memory for React
export NODE_OPTIONS='--max_old_space_size=4096'

# fuck
eval "$(thefuck --alias)"

# Aliases
alias reload="exec -l $SHELL"
alias ls='ls -G'
alias ll='ls -lhH'
alias yll='find node_modules -type l -maxdepth 3 | grep -v .bin | cut -f2- -d/'

