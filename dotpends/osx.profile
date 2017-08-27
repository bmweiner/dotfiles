#!/bin/bash

# set system environment variables
export PS1='\[$(tput setaf 2)\][\h:\W]\$\[$(tput sgr0)\] '
export JAVA_HOME=$(/usr/libexec/java_home)
export PYENV_ROOT=~/.pyenv

# store path array
locs=(
$PYENV_ROOT/bin
/usr/local/bin
$JAVA_HOME/bin
)

# set path
for loc in "${locs[@]}"
do
	PATH_BASH=$PATH_BASH$loc:
done
PATH=$PATH_BASH$PATH
export PATH

eval "$(pyenv init -)"
