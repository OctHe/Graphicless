# Graphicless aliases for bash and zsh
#
# Copyright(C) OctHe
#

# This project
alias gl='/usr/bin/git --git-dir=$HOME/.graphicless/ --work-tree=$HOME'

# ls
alias l='ls --color=always -lh'
alias ls='ls --color=always'
alias ll='ls --color=always -alh'

# Git
alias ga='git add'
alias gd='git diff'
alias gc='git checkout'
alias gcm='git checkout master'
alias rgrep='grep --color=always --exclude-dir=.git -rn'

if which nvim > /dev/null 2>&1; then
    alias nvimini='NVIM_APPNAME=nvimini nvim'
fi
