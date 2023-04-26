#!/bin/sh

CLASSPATH=.
prepend_path()
{
  if ! eval test -z "\"\${$1##*:$2:*}\"" -o -z "\"\${$1%%*:$2}\"" -o -z "\"\${$1##$2:*}\"" -o -z "\"\${$1##$2}\"" ; then
    eval "$1=$2:\$$1"
  fi
}

prepend_path CLASSPATH `pwd`/jshop2-gui/antlr.jar
prepend_path CLASSPATH `pwd`/jshop2-gui/JSHOP2.jar
export CLASSPATH
echo $CLASSPATH

cd ./domains/$1

java JSHOP2.InternalDomain $1
java JSHOP2.InternalDomain -r ./problem
javac $1.java problem.java
cp ../../jshop2-gui/gui/gui.java ./gui.java
cp -R ../../jshop2-gui/gui/images ./images
javac gui.java
java gui
rm $1.java 
rm $1.txt 
rm problem.java 
rm *.class
rm gui.java
rm -R images

cd ..
cd ..


