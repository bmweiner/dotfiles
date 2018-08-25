#!/bin/bash

# set system environment variables
export PS1='\[$(tput setaf 2)\][\h:\W]\$\[$(tput sgr0)\] '
export JAVA_HOME=$(/usr/libexec/java_home)

