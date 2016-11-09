#!/bin/bash

# set system environment variables
export PS1='\[$(tput setaf 6)\][\h:\W]\$\[$(tput sgr0)\] '

# store path array
locs=(
/usr/local/bin
)

# set path
for loc in "${locs[@]}"
do
	PATH_BASH=$PATH_BASH$loc:
done
PATH=$PATH_BASH$PATH
export PATH

# set aliases
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
