# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /home/msiampou/Downloads/cmake-3.16.2-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/msiampou/Downloads/cmake-3.16.2-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build"

# Include any dependencies generated for this target.
include CMakeFiles/1.model_loading__solar_system.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/1.model_loading__solar_system.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1.model_loading__solar_system.dir/flags.make

CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.o: CMakeFiles/1.model_loading__solar_system.dir/flags.make
CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.o: ../src/1.model_loading/solar_system/model_loading.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.o -c "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/src/1.model_loading/solar_system/model_loading.cpp"

CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/src/1.model_loading/solar_system/model_loading.cpp" > CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.i

CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/src/1.model_loading/solar_system/model_loading.cpp" -o CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.s

# Object files for target 1.model_loading__solar_system
1_model_loading__solar_system_OBJECTS = \
"CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.o"

# External object files for target 1.model_loading__solar_system
1_model_loading__solar_system_EXTERNAL_OBJECTS =

bin/1.model_loading/1.model_loading__solar_system: CMakeFiles/1.model_loading__solar_system.dir/src/1.model_loading/solar_system/model_loading.cpp.o
bin/1.model_loading/1.model_loading__solar_system: CMakeFiles/1.model_loading__solar_system.dir/build.make
bin/1.model_loading/1.model_loading__solar_system: /usr/lib/x86_64-linux-gnu/libglfw.so
bin/1.model_loading/1.model_loading__solar_system: /usr/lib/x86_64-linux-gnu/libassimp.so
bin/1.model_loading/1.model_loading__solar_system: libSTB_IMAGE.a
bin/1.model_loading/1.model_loading__solar_system: libGLAD.a
bin/1.model_loading/1.model_loading__solar_system: CMakeFiles/1.model_loading__solar_system.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/1.model_loading/1.model_loading__solar_system"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/1.model_loading__solar_system.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1.model_loading__solar_system.dir/build: bin/1.model_loading/1.model_loading__solar_system

.PHONY : CMakeFiles/1.model_loading__solar_system.dir/build

CMakeFiles/1.model_loading__solar_system.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/1.model_loading__solar_system.dir/cmake_clean.cmake
.PHONY : CMakeFiles/1.model_loading__solar_system.dir/clean

CMakeFiles/1.model_loading__solar_system.dir/depend:
	cd "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system" "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system" "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build" "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build" "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build/CMakeFiles/1.model_loading__solar_system.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/1.model_loading__solar_system.dir/depend
