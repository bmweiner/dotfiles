#!/bin/bash

# set environment variables
export Platform=x64
export JAVA_HOME=/c/cmd/java/jdk1.8.0_60
export M2_HOME=/c/cmd/maven
export M2=$M2_HOME/bin
export HADOOP_HOME=/c/cmd/hadoop
export SPARK_HOME=/c/cmd/spark
export JENA_HOME=/c/cmd/jena
export NLTK_DATA=/c/cmd/nltk_data

# store path array
locs=(
/c/cmd/7-Zip
/c/cmd/Git/cmd
/c/cmd/Git/bin
/c/cmd/cmake/bin
/c/cmd/MinGW/bin
/c/cmd/MinGW/msys/1.0/bin
/c/cmd/maven/bin
$JAVA_HOME/bin
/c/cmd/Anaconda
/c/cmd/Anaconda/Scripts
/c/cmd/gnuplot/bin
/c/cmd/groovy/bin
/c/cmd/nodejs
/c/cmd/octave/bin
/c/cmd/R/bin
/c/cmd/ruby/bin
/c/cmd/scala/bin
$HADOOP_HOME/bin
$HADOOP_HOME/sbin
$SPARK_HOME/bin
/c/cmd/mongodb/bin
/c/cmd/mysql/bin
/c/cmd/jena/bat
/c/cmd/docker
/c/cmd/protobuf
/c/cmd/zlib
)

#/c/cmd/Anaconda
#/c/cmd/Anaconda/Scripts
#/c/cmd/Python27
#/c/cmd/Python27/Scripts
#/c/cmd/Python35
#/c/cmd/Python35/Scripts

# set path
PATH=$PATH:
for loc in "${locs[@]}"
do
	PATH=$PATH$loc:
done
export PATH

# set aliases
alias np='/c/cmd/npp/notepad++.exe'

# force pseudoterminal interfaces
alias cmd='winpty cmd.exe'
alias powershell='winpty powershell'
alias gnuplot='winpty gnuplot.exe'
alias octave-cli='winpty octave-cli.exe'
alias python='winpty python.exe' #http://goo.gl/mk4Thx
alias R='winpty R.exe'
alias mongo='winpty mongo.exe'
alias mysql='winpty mysql.exe'
