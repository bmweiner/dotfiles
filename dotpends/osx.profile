#!/bin/bash

# set environment variables
export JAVA_HOME=/usr/libexec/java_home

# store path array
locs=(
/usr/local/bin
~/anaconda3/bin
$JAVA_HOME/bin
)

# set path
for loc in "${locs[@]}"
do
	PATH=$PATH$loc:
done
export PATH

# set aliases
