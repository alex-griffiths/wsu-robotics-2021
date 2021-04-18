# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cust_msg_pub: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icust_msg_pub:/home/alex/pub_sub_ws/src/cust_msg_pub/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cust_msg_pub_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg" NAME_WE)
add_custom_target(_cust_msg_pub_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cust_msg_pub" "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cust_msg_pub
  "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cust_msg_pub
)

### Generating Services

### Generating Module File
_generate_module_cpp(cust_msg_pub
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cust_msg_pub
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cust_msg_pub_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cust_msg_pub_generate_messages cust_msg_pub_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg" NAME_WE)
add_dependencies(cust_msg_pub_generate_messages_cpp _cust_msg_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cust_msg_pub_gencpp)
add_dependencies(cust_msg_pub_gencpp cust_msg_pub_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cust_msg_pub_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cust_msg_pub
  "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cust_msg_pub
)

### Generating Services

### Generating Module File
_generate_module_eus(cust_msg_pub
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cust_msg_pub
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cust_msg_pub_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cust_msg_pub_generate_messages cust_msg_pub_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg" NAME_WE)
add_dependencies(cust_msg_pub_generate_messages_eus _cust_msg_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cust_msg_pub_geneus)
add_dependencies(cust_msg_pub_geneus cust_msg_pub_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cust_msg_pub_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cust_msg_pub
  "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cust_msg_pub
)

### Generating Services

### Generating Module File
_generate_module_lisp(cust_msg_pub
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cust_msg_pub
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cust_msg_pub_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cust_msg_pub_generate_messages cust_msg_pub_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg" NAME_WE)
add_dependencies(cust_msg_pub_generate_messages_lisp _cust_msg_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cust_msg_pub_genlisp)
add_dependencies(cust_msg_pub_genlisp cust_msg_pub_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cust_msg_pub_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cust_msg_pub
  "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cust_msg_pub
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cust_msg_pub
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cust_msg_pub
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cust_msg_pub_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cust_msg_pub_generate_messages cust_msg_pub_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg" NAME_WE)
add_dependencies(cust_msg_pub_generate_messages_nodejs _cust_msg_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cust_msg_pub_gennodejs)
add_dependencies(cust_msg_pub_gennodejs cust_msg_pub_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cust_msg_pub_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cust_msg_pub
  "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cust_msg_pub
)

### Generating Services

### Generating Module File
_generate_module_py(cust_msg_pub
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cust_msg_pub
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cust_msg_pub_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cust_msg_pub_generate_messages cust_msg_pub_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/pub_sub_ws/src/cust_msg_pub/msg/my_first_cust_msg.msg" NAME_WE)
add_dependencies(cust_msg_pub_generate_messages_py _cust_msg_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cust_msg_pub_genpy)
add_dependencies(cust_msg_pub_genpy cust_msg_pub_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cust_msg_pub_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cust_msg_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cust_msg_pub
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cust_msg_pub_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cust_msg_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cust_msg_pub
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cust_msg_pub_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cust_msg_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cust_msg_pub
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cust_msg_pub_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cust_msg_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cust_msg_pub
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cust_msg_pub_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cust_msg_pub)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cust_msg_pub\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cust_msg_pub
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cust_msg_pub_generate_messages_py std_msgs_generate_messages_py)
endif()
