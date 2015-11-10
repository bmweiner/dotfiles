#!/bin/bash

# set environment variables
export PS1='\[$(tput setaf 2)\][\h:\W]\$\[$(tput sgr0)\] '
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export EDITOR=vim
export GIT_EDITOR=$EDITOR

# declare functions
# find directory of executable and change to it
wcd () { cd "$(dirname $(which "$1"))"; }
# make executable directory and change to it
mcd () { mkdir -p "$1" && cd "$1"; }

# set aliases
alias ll='ls -la'
