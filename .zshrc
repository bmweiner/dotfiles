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
export SCALA_HOME=~/local/lib/scala-2.13.4

# set path, ordered by precedence
items=(
/usr/local/bin
~/local/bin
~/local/lib/apache-maven-3.6.3/bin
~/local/lib/node-v12.18.3-darwin-x64/bin
~/local/lib/jdk-11.0.8+10/Contents/Home/bin
~/local/lib/scala-2.13.4/bin
)

for (( idx=${#items[@]}-1 ; idx>=0 ; idx-- )) ; do
    export PATH="${items[idx]}":$PATH
done

# update prompt
PROMPT="%{$fg_bold[white]%}%n%{$fg[blue]%}@%{$fg_bold[yellow]%}%m"              
PROMPT+="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"                          
PROMPT+='%{$fg[cyan]%}%1~%{$reset_color%} $(git_prompt_info)'  
