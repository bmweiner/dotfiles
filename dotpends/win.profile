#!/bin/bash

# set environment variables
export Platform=x64
export MSVS="C:\Program Files (x86)\Microsoft Visual Studio 14.0"
export VS140COMNTOOLS="$MSVS\Common7\Tools"
export VS90COMNTOOLS=$VS140COMNTOOLS  # allows py27 to find vcvarsall.bat
export JAVA_HOME=/c/cmd/java/jdk1.8.0_60
export M2_HOME=/c/cmd/maven
export M2=$M2_HOME/bin
export HADOOP_HOME=/c/cmd/hadoop
export SPARK_HOME=/c/cmd/spark
export JENA_HOME=/c/cmd/jena
export DOCKER_TOOLBOX_INSTALL_PATH=/c/cmd/docker
export NLTK_DATA=C:\\cmd\\nltk_data

# store path array
locs=(
/c/cmd/7-Zip
/c/cmd/Git/cmd
/c/cmd/Git/bin
/c/cmd/TortoiseSVN/bin
"$(cygpath "$MSVS")/VC"
/c/cmd/cmake/bin
/c/cmd/mingw64/bin
/c/cmd/MinGW/bin
/c/cmd/MinGW/msys/1.0/bin
/c/cmd/maven/bin
$JAVA_HOME/bin
/c/cmd/anaconda
/c/cmd/anaconda/Scripts
/c/cmd/anaconda/Library/bin
#/c/cmd/Python27
#/c/cmd/Python27/Scripts
#/c/cmd/Python35
#/c/cmd/Python35/Scripts
/c/cmd/pypy3-2.4.0-win32
/c/cmd/julia/bin
/c/cmd/gnuplot/bin
/c/cmd/graphviz/bin
/c/cmd/groovy/bin
/c/cmd/nodejs
$(cygpath $APPDATA/npm)
/c/cmd/octave/bin
/c/cmd/R/bin
/c/cmd/ruby/bin
/c/cmd/scala/bin
$HADOOP_HOME/bin
$HADOOP_HOME/sbin
$SPARK_HOME/bin
/c/cmd/mongodb/bin
/c/cmd/mysql/bin
/c/cmd/sqlite
/c/cmd/jena/bat
/c/cmd/docker
/c/cmd/protobuf
/c/cmd/zlib
/c/cmd/ImageMagick
/c/cmd/Pandoc
$DOCKER_TOOLBOX_INSTALL_PATH
)

# set path
for loc in "${locs[@]}"
do
	PATH_BASH=$PATH_BASH$loc:
done
PATH=$PATH$PATH_BASH
# patch for ImageMagick convert conflict http://goo.gl/Oygwxq
PATH=/c/cmd/ImageMagick:$PATH
export PATH

# declare win functions
function cbc() {
    cat >/dev/clipboard
}
function cbp(){
    cat /dev/clipboard
}

# set aliases
alias np='/c/cmd/npp/notepad++.exe'
alias activate='start cmd //k C:/cmd/Anaconda/Scripts/activate.bat'
alias bokeh='bokeh.bat'

# patch for lightning, must start server from parent dir
alias lightning-server='cd $(cygpath $APPDATA/npm) && lightning-server'

# force pseudoterminal interfaces
alias cmd='winpty cmd.exe'
alias powershell='winpty powershell'
alias gnuplot='winpty gnuplot.exe'
alias octave-cli='winpty octave-cli.exe'
alias python='winpty python.exe'  # http://goo.gl/mk4Thx
alias ipython='winpty ipython.exe'
alias pypy='winpty pypy.exe'
alias R='winpty R.exe'
alias node='winpty node.exe'
alias mongo='winpty mongo.exe'
alias mysql='winpty mysql.exe'
alias sqlite3='winpty sqlite3.exe'
