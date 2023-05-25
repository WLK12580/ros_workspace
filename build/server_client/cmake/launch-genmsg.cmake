# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "launch: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(launch_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv" NAME_WE)
add_custom_target(_launch_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "launch" "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(launch
  "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/launch
)

### Generating Module File
_generate_module_cpp(launch
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/launch
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(launch_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(launch_generate_messages launch_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv" NAME_WE)
add_dependencies(launch_generate_messages_cpp _launch_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(launch_gencpp)
add_dependencies(launch_gencpp launch_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS launch_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(launch
  "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/launch
)

### Generating Module File
_generate_module_eus(launch
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/launch
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(launch_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(launch_generate_messages launch_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv" NAME_WE)
add_dependencies(launch_generate_messages_eus _launch_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(launch_geneus)
add_dependencies(launch_geneus launch_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS launch_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(launch
  "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/launch
)

### Generating Module File
_generate_module_lisp(launch
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/launch
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(launch_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(launch_generate_messages launch_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv" NAME_WE)
add_dependencies(launch_generate_messages_lisp _launch_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(launch_genlisp)
add_dependencies(launch_genlisp launch_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS launch_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(launch
  "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/launch
)

### Generating Module File
_generate_module_nodejs(launch
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/launch
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(launch_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(launch_generate_messages launch_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv" NAME_WE)
add_dependencies(launch_generate_messages_nodejs _launch_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(launch_gennodejs)
add_dependencies(launch_gennodejs launch_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS launch_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(launch
  "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/launch
)

### Generating Module File
_generate_module_py(launch
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/launch
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(launch_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(launch_generate_messages launch_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlk/workspace/catkin_ws/src/server_client/srv/twoadd.srv" NAME_WE)
add_dependencies(launch_generate_messages_py _launch_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(launch_genpy)
add_dependencies(launch_genpy launch_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS launch_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/launch)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/launch
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(launch_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/launch)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/launch
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(launch_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/launch)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/launch
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(launch_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/launch)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/launch
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(launch_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/launch)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/launch\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/launch
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(launch_generate_messages_py std_msgs_generate_messages_py)
endif()
