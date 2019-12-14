# oh-my-zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# set functions
wcd () { cd "$(dirname $(which "$1"))"; }
mcd () { mkdir -p "$1" && cd "$1"; }

# set aliases
alias ll='ls -lha'

# set environment variables
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=/usr/local/bin:/usr/local/sbin:$PATH # homebrew
# export PATH=/usr/local/opt/ruby/bin:$PATH 
# export PATH=/usr/local/lib/ruby/gems/2.5.0/bin:$PATH
export PATH=~/anaconda3/bin:$PATH
