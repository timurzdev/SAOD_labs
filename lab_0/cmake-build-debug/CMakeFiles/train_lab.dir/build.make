# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /home/lordmoskalt/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/202.6948.80/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/lordmoskalt/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/202.6948.80/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lordmoskalt/Desktop/SAOD_labs/train_lab

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lordmoskalt/Desktop/SAOD_labs/train_lab/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/train_lab.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/train_lab.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/train_lab.dir/flags.make

CMakeFiles/train_lab.dir/main.cpp.o: CMakeFiles/train_lab.dir/flags.make
CMakeFiles/train_lab.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lordmoskalt/Desktop/SAOD_labs/train_lab/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/train_lab.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/train_lab.dir/main.cpp.o -c /home/lordmoskalt/Desktop/SAOD_labs/train_lab/main.cpp

CMakeFiles/train_lab.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/train_lab.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lordmoskalt/Desktop/SAOD_labs/train_lab/main.cpp > CMakeFiles/train_lab.dir/main.cpp.i

CMakeFiles/train_lab.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/train_lab.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lordmoskalt/Desktop/SAOD_labs/train_lab/main.cpp -o CMakeFiles/train_lab.dir/main.cpp.s

# Object files for target train_lab
train_lab_OBJECTS = \
"CMakeFiles/train_lab.dir/main.cpp.o"

# External object files for target train_lab
train_lab_EXTERNAL_OBJECTS =

train_lab: CMakeFiles/train_lab.dir/main.cpp.o
train_lab: CMakeFiles/train_lab.dir/build.make
train_lab: CMakeFiles/train_lab.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lordmoskalt/Desktop/SAOD_labs/train_lab/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable train_lab"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/train_lab.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/train_lab.dir/build: train_lab

.PHONY : CMakeFiles/train_lab.dir/build

CMakeFiles/train_lab.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/train_lab.dir/cmake_clean.cmake
.PHONY : CMakeFiles/train_lab.dir/clean

CMakeFiles/train_lab.dir/depend:
	cd /home/lordmoskalt/Desktop/SAOD_labs/train_lab/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lordmoskalt/Desktop/SAOD_labs/train_lab /home/lordmoskalt/Desktop/SAOD_labs/train_lab /home/lordmoskalt/Desktop/SAOD_labs/train_lab/cmake-build-debug /home/lordmoskalt/Desktop/SAOD_labs/train_lab/cmake-build-debug /home/lordmoskalt/Desktop/SAOD_labs/train_lab/cmake-build-debug/CMakeFiles/train_lab.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/train_lab.dir/depend

