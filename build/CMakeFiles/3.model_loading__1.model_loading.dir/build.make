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
include CMakeFiles/3.model_loading__1.model_loading.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/3.model_loading__1.model_loading.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/3.model_loading__1.model_loading.dir/flags.make

CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.o: CMakeFiles/3.model_loading__1.model_loading.dir/flags.make
CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.o: ../src/3.model_loading/1.model_loading/model_loading.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.o -c "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/src/3.model_loading/1.model_loading/model_loading.cpp"

CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/src/3.model_loading/1.model_loading/model_loading.cpp" > CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.i

CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/src/3.model_loading/1.model_loading/model_loading.cpp" -o CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.s

# Object files for target 3.model_loading__1.model_loading
3_model_loading__1_model_loading_OBJECTS = \
"CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.o"

# External object files for target 3.model_loading__1.model_loading
3_model_loading__1_model_loading_EXTERNAL_OBJECTS =

bin/3.model_loading/3.model_loading__1.model_loading: CMakeFiles/3.model_loading__1.model_loading.dir/src/3.model_loading/1.model_loading/model_loading.cpp.o
bin/3.model_loading/3.model_loading__1.model_loading: CMakeFiles/3.model_loading__1.model_loading.dir/build.make
bin/3.model_loading/3.model_loading__1.model_loading: /usr/lib/x86_64-linux-gnu/libglfw.so
bin/3.model_loading/3.model_loading__1.model_loading: /usr/lib/x86_64-linux-gnu/libassimp.so
bin/3.model_loading/3.model_loading__1.model_loading: libSTB_IMAGE.a
bin/3.model_loading/3.model_loading__1.model_loading: libGLAD.a
bin/3.model_loading/3.model_loading__1.model_loading: CMakeFiles/3.model_loading__1.model_loading.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/3.model_loading/3.model_loading__1.model_loading"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/3.model_loading__1.model_loading.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/3.model_loading__1.model_loading.dir/build: bin/3.model_loading/3.model_loading__1.model_loading

.PHONY : CMakeFiles/3.model_loading__1.model_loading.dir/build

CMakeFiles/3.model_loading__1.model_loading.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/3.model_loading__1.model_loading.dir/cmake_clean.cmake
.PHONY : CMakeFiles/3.model_loading__1.model_loading.dir/clean

CMakeFiles/3.model_loading__1.model_loading.dir/depend:
	cd "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system" "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system" "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build" "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build" "/home/msiampou/Desktop/5th Semester/Graphics/mini-solar-system/build/CMakeFiles/3.model_loading__1.model_loading.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/3.model_loading__1.model_loading.dir/depend

