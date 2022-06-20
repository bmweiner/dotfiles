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
export JAVA_HOME=~/local/lib/jdk-11.0.8+10/Contents/Home
export CATALINA_HOME=~/local/lib/apache-tomcat-8.5.57

# set path
items=(
~/.local/bin
~/local/bin
~/local/lib/miniconda3/bin
~/local/lib/apache-maven-3.6.3/bin
~/local/lib/node-v12.18.3-darwin-x64/bin
~/local/lib/jdk-11.0.8+10/Contents/Home/bin
)

for item in $items; do
    export PATH=$item:$PATH
done

# update prompt
PROMPT="%{$fg_bold[white]%}%n%{$fg[blue]%}@%{$fg_bold[yellow]%}%m"              
PROMPT+="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"                          
PROMPT+='%{$fg[cyan]%}%1d%{$reset_color%} $(git_prompt_info)'
