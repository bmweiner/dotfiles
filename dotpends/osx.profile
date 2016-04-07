#!/bin/bash

# set environment variables
export JAVA_HOME=$(/usr/libexec/java_home)

# store path array
locs=(
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
