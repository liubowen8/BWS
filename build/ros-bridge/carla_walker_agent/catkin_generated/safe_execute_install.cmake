execute_process(COMMAND "/home/l/bws/build/ros-bridge/carla_walker_agent/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/l/bws/build/ros-bridge/carla_walker_agent/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
