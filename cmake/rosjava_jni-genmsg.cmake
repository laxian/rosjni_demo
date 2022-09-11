# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rosjava_jni: 2 messages, 0 services")

set(MSG_I_FLAGS "-Irosjava_jni:/root/rosnodejs_ws/src/rosjava_jni/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rosjava_jni_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg" NAME_WE)
add_custom_target(_rosjava_jni_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosjava_jni" "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg" ""
)

get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg" NAME_WE)
add_custom_target(_rosjava_jni_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosjava_jni" "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg" "std_msgs/MultiArrayLayout:std_msgs/Byte:std_msgs/MultiArrayDimension:std_msgs/ByteMultiArray"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rosjava_jni
  "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosjava_jni
)
_generate_msg_cpp(rosjava_jni
  "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Byte.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ByteMultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosjava_jni
)

### Generating Services

### Generating Module File
_generate_module_cpp(rosjava_jni
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosjava_jni
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rosjava_jni_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rosjava_jni_generate_messages rosjava_jni_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg" NAME_WE)
add_dependencies(rosjava_jni_generate_messages_cpp _rosjava_jni_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg" NAME_WE)
add_dependencies(rosjava_jni_generate_messages_cpp _rosjava_jni_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosjava_jni_gencpp)
add_dependencies(rosjava_jni_gencpp rosjava_jni_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosjava_jni_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rosjava_jni
  "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosjava_jni
)
_generate_msg_eus(rosjava_jni
  "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Byte.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ByteMultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosjava_jni
)

### Generating Services

### Generating Module File
_generate_module_eus(rosjava_jni
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosjava_jni
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rosjava_jni_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rosjava_jni_generate_messages rosjava_jni_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg" NAME_WE)
add_dependencies(rosjava_jni_generate_messages_eus _rosjava_jni_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg" NAME_WE)
add_dependencies(rosjava_jni_generate_messages_eus _rosjava_jni_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosjava_jni_geneus)
add_dependencies(rosjava_jni_geneus rosjava_jni_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosjava_jni_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rosjava_jni
  "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosjava_jni
)
_generate_msg_lisp(rosjava_jni
  "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Byte.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ByteMultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosjava_jni
)

### Generating Services

### Generating Module File
_generate_module_lisp(rosjava_jni
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosjava_jni
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rosjava_jni_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rosjava_jni_generate_messages rosjava_jni_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg" NAME_WE)
add_dependencies(rosjava_jni_generate_messages_lisp _rosjava_jni_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg" NAME_WE)
add_dependencies(rosjava_jni_generate_messages_lisp _rosjava_jni_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosjava_jni_genlisp)
add_dependencies(rosjava_jni_genlisp rosjava_jni_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosjava_jni_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rosjava_jni
  "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosjava_jni
)
_generate_msg_nodejs(rosjava_jni
  "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Byte.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ByteMultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosjava_jni
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rosjava_jni
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosjava_jni
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rosjava_jni_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rosjava_jni_generate_messages rosjava_jni_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg" NAME_WE)
add_dependencies(rosjava_jni_generate_messages_nodejs _rosjava_jni_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg" NAME_WE)
add_dependencies(rosjava_jni_generate_messages_nodejs _rosjava_jni_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosjava_jni_gennodejs)
add_dependencies(rosjava_jni_gennodejs rosjava_jni_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosjava_jni_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rosjava_jni
  "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosjava_jni
)
_generate_msg_py(rosjava_jni
  "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Byte.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ByteMultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosjava_jni
)

### Generating Services

### Generating Module File
_generate_module_py(rosjava_jni
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosjava_jni
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rosjava_jni_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rosjava_jni_generate_messages rosjava_jni_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/Zwx.msg" NAME_WE)
add_dependencies(rosjava_jni_generate_messages_py _rosjava_jni_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rosnodejs_ws/src/rosjava_jni/msg/TestBadDataTypes.msg" NAME_WE)
add_dependencies(rosjava_jni_generate_messages_py _rosjava_jni_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosjava_jni_genpy)
add_dependencies(rosjava_jni_genpy rosjava_jni_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosjava_jni_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosjava_jni)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosjava_jni
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rosjava_jni_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(rosjava_jni_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosjava_jni)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosjava_jni
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rosjava_jni_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(rosjava_jni_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosjava_jni)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosjava_jni
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rosjava_jni_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(rosjava_jni_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosjava_jni)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosjava_jni
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rosjava_jni_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(rosjava_jni_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosjava_jni)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosjava_jni\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosjava_jni
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rosjava_jni_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(rosjava_jni_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
