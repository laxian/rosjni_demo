#!/bin/bash

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

