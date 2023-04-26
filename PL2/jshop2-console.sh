#!/bin/sh

CLASSPATH=.
prepend_path()
{
  if ! eval test -z "\"\${$1##*:$2:*}\"" -o -z "\"\${$1%%*:$2}\"" -o -z "\"\${$1##$2:*}\"" -o -z "\"\${$1##$2}\"" ; then
    eval "$1=$2:\$$1"
  fi
}

prepend_path CLASSPATH `pwd`/jshop2-console/antlr.jar
prepend_path CLASSPATH `pwd`/jshop2-console/JSHOP2.jar
export CLASSPATH
echo $CLASSPATH

cd ./domains/$1

java JSHOP2.InternalDomain $1
java JSHOP2.InternalDomain -r1 ./problem
javac $1.java problem.java
java problem
rm $1.java 
rm $1.txt 
rm problem.java 
rm *.class

cd ..
cd ..


