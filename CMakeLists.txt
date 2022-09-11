cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

set(ROS_BUILD_TYPE Debug)
rosbuild_init()

rosbuild_genmsg()
rosbuild_gensrv()

add_java_source_dir(${PROJECT_SOURCE_DIR}/src)

rospack_add_java_executable(bin/Testee Testee)
rospack_add_java_executable(bin/Talker Talker)
rospack_add_java_executable(bin/Listener Listener)
rospack_add_java_executable(bin/AddTwoIntsServer AddTwoIntsServer)
rospack_add_java_executable(bin/AddTwoIntsClient AddTwoIntsClient)

rosbuild_add_executable(bin/tester src/tester.cpp)
rosbuild_add_gtest_build_flags(bin/tester)
rosbuild_add_rostest(src/rosjava_test.launch)
