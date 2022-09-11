#!/bin/bash

# there's a bug in gradle's script dir
# 使用这个修复一下

echo $0
CWD=`dirname $0`
CWD=`realpath $CWD`
echo cwd $CWD

sed -i 's/lib\//libs\//g' $CWD/../build/scripts/hello_java

# $CWD/../build/scripts/hello_java