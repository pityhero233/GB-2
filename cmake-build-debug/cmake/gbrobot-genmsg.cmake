# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gbrobot: 0 messages, 5 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/kinetic/share/visualization_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gbrobot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv" NAME_WE)
add_custom_target(_gbrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gbrobot" "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv" ""
)

get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv" NAME_WE)
add_custom_target(_gbrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gbrobot" "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv" ""
)

get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv" NAME_WE)
add_custom_target(_gbrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gbrobot" "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv" ""
)

get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv" NAME_WE)
add_custom_target(_gbrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gbrobot" "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv" ""
)

get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv" NAME_WE)
add_custom_target(_gbrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gbrobot" "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gbrobot
)
_generate_srv_cpp(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gbrobot
)
_generate_srv_cpp(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gbrobot
)
_generate_srv_cpp(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gbrobot
)
_generate_srv_cpp(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gbrobot
)

### Generating Module File
_generate_module_cpp(gbrobot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gbrobot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gbrobot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gbrobot_generate_messages gbrobot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_cpp _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_cpp _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_cpp _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_cpp _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_cpp _gbrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gbrobot_gencpp)
add_dependencies(gbrobot_gencpp gbrobot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gbrobot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gbrobot
)
_generate_srv_eus(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gbrobot
)
_generate_srv_eus(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gbrobot
)
_generate_srv_eus(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gbrobot
)
_generate_srv_eus(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gbrobot
)

### Generating Module File
_generate_module_eus(gbrobot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gbrobot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gbrobot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gbrobot_generate_messages gbrobot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_eus _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_eus _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_eus _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_eus _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_eus _gbrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gbrobot_geneus)
add_dependencies(gbrobot_geneus gbrobot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gbrobot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gbrobot
)
_generate_srv_lisp(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gbrobot
)
_generate_srv_lisp(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gbrobot
)
_generate_srv_lisp(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gbrobot
)
_generate_srv_lisp(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gbrobot
)

### Generating Module File
_generate_module_lisp(gbrobot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gbrobot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gbrobot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gbrobot_generate_messages gbrobot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_lisp _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_lisp _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_lisp _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_lisp _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_lisp _gbrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gbrobot_genlisp)
add_dependencies(gbrobot_genlisp gbrobot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gbrobot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gbrobot
)
_generate_srv_nodejs(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gbrobot
)
_generate_srv_nodejs(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gbrobot
)
_generate_srv_nodejs(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gbrobot
)
_generate_srv_nodejs(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gbrobot
)

### Generating Module File
_generate_module_nodejs(gbrobot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gbrobot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gbrobot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gbrobot_generate_messages gbrobot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_nodejs _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_nodejs _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_nodejs _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_nodejs _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_nodejs _gbrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gbrobot_gennodejs)
add_dependencies(gbrobot_gennodejs gbrobot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gbrobot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gbrobot
)
_generate_srv_py(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gbrobot
)
_generate_srv_py(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gbrobot
)
_generate_srv_py(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gbrobot
)
_generate_srv_py(gbrobot
  "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gbrobot
)

### Generating Module File
_generate_module_py(gbrobot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gbrobot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gbrobot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gbrobot_generate_messages gbrobot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/deskInserter.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_py _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/reset.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_py _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/navigate.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_py _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/waypointInserter.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_py _gbrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pityhero/catkin_ws/src/gbrobot/srv/debug.srv" NAME_WE)
add_dependencies(gbrobot_generate_messages_py _gbrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gbrobot_genpy)
add_dependencies(gbrobot_genpy gbrobot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gbrobot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gbrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gbrobot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(gbrobot_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(gbrobot_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(gbrobot_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gbrobot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(gbrobot_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(gbrobot_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gbrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gbrobot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(gbrobot_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(gbrobot_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(gbrobot_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gbrobot_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(gbrobot_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(gbrobot_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gbrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gbrobot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(gbrobot_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(gbrobot_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(gbrobot_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gbrobot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(gbrobot_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(gbrobot_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gbrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gbrobot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(gbrobot_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(gbrobot_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(gbrobot_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gbrobot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(gbrobot_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(gbrobot_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gbrobot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gbrobot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gbrobot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(gbrobot_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(gbrobot_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(gbrobot_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gbrobot_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(gbrobot_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(gbrobot_generate_messages_py visualization_msgs_generate_messages_py)
endif()
