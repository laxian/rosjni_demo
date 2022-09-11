#!/bin/bash

CWD=`dirname $0`
if [ -d "src" ]; then
	PROJ_DIR=$CWD
else
	PROJ_DIR=`realpath $CWD/..`
fi	
cd $PROJ_DIR

pwd

pushd ../..
catkin_make
source ./devel/setup.bash
popd

pwd

cd scripts
./build-deps.sh

cd ..
./gradlew build
# unzip ./build/libs/rosjni*.jar
# scp -r ros ./src/
# rm -rf META* ros
cmake .
mkdir bin
cd scripts
./build-msgs.sh
cd ..
# make

bin/Talker

