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
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home
export CATALINA_HOME=~/local/apache-tomcat-8.5.57

# set path
items=(
~/local/miniconda3/bin
~/local/apache-maven/bin
)

for item in $items; do
    export PATH=$item:$PATH
done


# export PATH=/usr/local/opt/ruby/bin:$PATH 
# export PATH=/usr/local/lib/ruby/gems/2.5.0/bin:$PATH
