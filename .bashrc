#!/bin/bash

# set common environment variables
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
