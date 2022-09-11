#!/bin/bash

cd scripts
./build-deps.sh

cd ..
./gradlew build
unzip ./build/libs/rosjni*.jar
scp -r ros ./src/
rm -rf META* ros

cd scripts
./build-msgs.sh
cd ..
cmake .
mkdir bin
make

