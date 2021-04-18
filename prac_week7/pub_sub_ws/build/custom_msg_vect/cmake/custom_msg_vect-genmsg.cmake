# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "custom_msg_vect: 2 messages, 0 services")

set(MSG_I_FLAGS "-Icustom_msg_vect:/home/alex/pub_sub_ws/src/custom_msg_vect/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(custom_msg_vect_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg" NAME_WE)
add_custom_target(_custom_msg_vect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "custom_msg_vect" "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg" ""
)

get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg" NAME_WE)
add_custom_target(_custom_msg_vect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "custom_msg_vect" "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg" "custom_msg_vect/num_to_add"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(custom_msg_vect
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_msg_vect
)
_generate_msg_cpp(custom_msg_vect
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg"
  "${MSG_I_FLAGS}"
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_msg_vect
)

### Generating Services

### Generating Module File
_generate_module_cpp(custom_msg_vect
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_msg_vect
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(custom_msg_vect_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(custom_msg_vect_generate_messages custom_msg_vect_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg" NAME_WE)
add_dependencies(custom_msg_vect_generate_messages_cpp _custom_msg_vect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg" NAME_WE)
add_dependencies(custom_msg_vect_generate_messages_cpp _custom_msg_vect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_msg_vect_gencpp)
add_dependencies(custom_msg_vect_gencpp custom_msg_vect_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_msg_vect_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(custom_msg_vect
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/custom_msg_vect
)
_generate_msg_eus(custom_msg_vect
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg"
  "${MSG_I_FLAGS}"
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/custom_msg_vect
)

### Generating Services

### Generating Module File
_generate_module_eus(custom_msg_vect
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/custom_msg_vect
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(custom_msg_vect_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(custom_msg_vect_generate_messages custom_msg_vect_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg" NAME_WE)
add_dependencies(custom_msg_vect_generate_messages_eus _custom_msg_vect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg" NAME_WE)
add_dependencies(custom_msg_vect_generate_messages_eus _custom_msg_vect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_msg_vect_geneus)
add_dependencies(custom_msg_vect_geneus custom_msg_vect_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_msg_vect_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(custom_msg_vect
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_msg_vect
)
_generate_msg_lisp(custom_msg_vect
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg"
  "${MSG_I_FLAGS}"
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_msg_vect
)

### Generating Services

### Generating Module File
_generate_module_lisp(custom_msg_vect
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_msg_vect
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(custom_msg_vect_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(custom_msg_vect_generate_messages custom_msg_vect_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg" NAME_WE)
add_dependencies(custom_msg_vect_generate_messages_lisp _custom_msg_vect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg" NAME_WE)
add_dependencies(custom_msg_vect_generate_messages_lisp _custom_msg_vect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_msg_vect_genlisp)
add_dependencies(custom_msg_vect_genlisp custom_msg_vect_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_msg_vect_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(custom_msg_vect
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/custom_msg_vect
)
_generate_msg_nodejs(custom_msg_vect
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg"
  "${MSG_I_FLAGS}"
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/custom_msg_vect
)

### Generating Services

### Generating Module File
_generate_module_nodejs(custom_msg_vect
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/custom_msg_vect
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(custom_msg_vect_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(custom_msg_vect_generate_messages custom_msg_vect_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg" NAME_WE)
add_dependencies(custom_msg_vect_generate_messages_nodejs _custom_msg_vect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg" NAME_WE)
add_dependencies(custom_msg_vect_generate_messages_nodejs _custom_msg_vect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_msg_vect_gennodejs)
add_dependencies(custom_msg_vect_gennodejs custom_msg_vect_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_msg_vect_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(custom_msg_vect
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_msg_vect
)
_generate_msg_py(custom_msg_vect
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg"
  "${MSG_I_FLAGS}"
  "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_msg_vect
)

### Generating Services

### Generating Module File
_generate_module_py(custom_msg_vect
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_msg_vect
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(custom_msg_vect_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(custom_msg_vect_generate_messages custom_msg_vect_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add.msg" NAME_WE)
add_dependencies(custom_msg_vect_generate_messages_py _custom_msg_vect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alex/pub_sub_ws/src/custom_msg_vect/msg/num_to_add_vector.msg" NAME_WE)
add_dependencies(custom_msg_vect_generate_messages_py _custom_msg_vect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_msg_vect_genpy)
add_dependencies(custom_msg_vect_genpy custom_msg_vect_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_msg_vect_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_msg_vect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_msg_vect
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(custom_msg_vect_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/custom_msg_vect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/custom_msg_vect
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(custom_msg_vect_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_msg_vect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_msg_vect
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(custom_msg_vect_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/custom_msg_vect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/custom_msg_vect
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(custom_msg_vect_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_msg_vect)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_msg_vect\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_msg_vect
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(custom_msg_vect_generate_messages_py std_msgs_generate_messages_py)
endif()
