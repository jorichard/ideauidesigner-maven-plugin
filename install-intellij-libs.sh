#!/bin/sh

INTELLIJ_HOME=$1

if [ -z "$INTELLIJ_HOME" ]
then
  echo "Please provide the path to Intellij home directory. For example: install-intellij-libs.sh /Applications/Nika-IU-111.228.app"
  exit 1
fi

if [ ! -d "$INTELLIJ_HOME" ]
then
  echo "Directory does not exist: $INTELLIJ_HOME"
  exit 1
fi

echo 'Installing Intellij artifacts to Maven local repository'
echo "Intellij home: $INTELLIJ_HOME"

mvn install:install-file -Dfile="$INTELLIJ_HOME/lib/javac2.jar" -DgroupId=com.intellij -DartifactId=javac2 -Dversion=17.1.5 -Dpackaging=jar
mvn install:install-file -Dfile="$INTELLIJ_HOME/lib/asm-all.jar" -DgroupId=com.intellij -DartifactId=asm-all -Dversion=17.1.5 -Dpackaging=jar
mvn install:install-file -Dfile="$INTELLIJ_HOME/lib/forms_rt.jar" -DgroupId=com.intellij -DartifactId=forms_rt -Dversion=17.1.5 -Dpackaging=jar
