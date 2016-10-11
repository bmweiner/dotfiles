#!/bin/bash

# set system environment variables
export PS1='\[$(tput setaf 2)\][\h:\W]\$\[$(tput sgr0)\] '
export JAVA_HOME=$(/usr/libexec/java_home)
export PYENV_ROOT=/usr/local/var/pyenv

# store path array
locs=(
$PYENV_ROOT/shims
/usr/local/bin
#/usr/local/opt/anaconda2/bin
#/usr/local/opt/anaconda3/bin
$JAVA_HOME/bin
)

# set path
for loc in "${locs[@]}"
do
	PATH_BASH=$PATH_BASH$loc:
done
PATH=$PATH_BASH$PATH
export PATH

# set aliases

