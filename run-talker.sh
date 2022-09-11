#!/bin/bash

source "/opt/ros/$ROS_DISTRO/setup.bash" --
source ~/rosnodejs_ws/devel/setup.bash
# if jar not contains so, find it in LD_LIBRARY or by java cli args: -Djava.library.path
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`rospack find rosjava_jni`/jni/build

cd src

LIB_DIR=/root/rosnodejs_ws/src/hello_java/build/libs
java -classpath $LIB_DIR/hello_java-1.0.1.jar:$LIB_DIR/rosjni-linux-aarch64-1.0.0.jar Talker