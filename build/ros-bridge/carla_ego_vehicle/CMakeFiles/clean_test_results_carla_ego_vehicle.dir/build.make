# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/l/bws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/l/bws/build

# Utility rule file for clean_test_results_carla_ego_vehicle.

# Include the progress variables for this target.
include ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle.dir/progress.make

ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle:
	cd /home/l/bws/build/ros-bridge/carla_ego_vehicle && /home/l/anaconda3/envs/huawei/bin/python3 /opt/ros/melodic/share/catkin/cmake/test/remove_test_results.py /home/l/bws/build/test_results/carla_ego_vehicle

clean_test_results_carla_ego_vehicle: ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle
clean_test_results_carla_ego_vehicle: ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle.dir/build.make

.PHONY : clean_test_results_carla_ego_vehicle

# Rule to build all files generated by this target.
ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle.dir/build: clean_test_results_carla_ego_vehicle

.PHONY : ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle.dir/build

ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle.dir/clean:
	cd /home/l/bws/build/ros-bridge/carla_ego_vehicle && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_carla_ego_vehicle.dir/cmake_clean.cmake
.PHONY : ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle.dir/clean

ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle.dir/depend:
	cd /home/l/bws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/l/bws/src /home/l/bws/src/ros-bridge/carla_ego_vehicle /home/l/bws/build /home/l/bws/build/ros-bridge/carla_ego_vehicle /home/l/bws/build/ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros-bridge/carla_ego_vehicle/CMakeFiles/clean_test_results_carla_ego_vehicle.dir/depend

