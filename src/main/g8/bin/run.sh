#!/usr/bin/env bash

classpath=""

for file in $(ls libs/*.jar)
do
  classpath="$file:$classpath"
done

java -cp ${classpath}${project.build.finalName}.jar $package$.App $@
