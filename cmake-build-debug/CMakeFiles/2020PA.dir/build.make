# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "G:\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "G:\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = G:\2020PA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = G:\2020PA\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/2020PA.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/2020PA.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2020PA.dir/flags.make

CMakeFiles/2020PA.dir/main.cpp.obj: CMakeFiles/2020PA.dir/flags.make
CMakeFiles/2020PA.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\2020PA\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2020PA.dir/main.cpp.obj"
	G:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\2020PA.dir\main.cpp.obj -c G:\2020PA\main.cpp

CMakeFiles/2020PA.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2020PA.dir/main.cpp.i"
	G:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\2020PA\main.cpp > CMakeFiles\2020PA.dir\main.cpp.i

CMakeFiles/2020PA.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2020PA.dir/main.cpp.s"
	G:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\2020PA\main.cpp -o CMakeFiles\2020PA.dir\main.cpp.s

CMakeFiles/2020PA.dir/DPLL.cpp.obj: CMakeFiles/2020PA.dir/flags.make
CMakeFiles/2020PA.dir/DPLL.cpp.obj: ../DPLL.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\2020PA\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/2020PA.dir/DPLL.cpp.obj"
	G:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\2020PA.dir\DPLL.cpp.obj -c G:\2020PA\DPLL.cpp

CMakeFiles/2020PA.dir/DPLL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2020PA.dir/DPLL.cpp.i"
	G:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\2020PA\DPLL.cpp > CMakeFiles\2020PA.dir\DPLL.cpp.i

CMakeFiles/2020PA.dir/DPLL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2020PA.dir/DPLL.cpp.s"
	G:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\2020PA\DPLL.cpp -o CMakeFiles\2020PA.dir\DPLL.cpp.s

# Object files for target 2020PA
2020PA_OBJECTS = \
"CMakeFiles/2020PA.dir/main.cpp.obj" \
"CMakeFiles/2020PA.dir/DPLL.cpp.obj"

# External object files for target 2020PA
2020PA_EXTERNAL_OBJECTS =

2020PA.exe: CMakeFiles/2020PA.dir/main.cpp.obj
2020PA.exe: CMakeFiles/2020PA.dir/DPLL.cpp.obj
2020PA.exe: CMakeFiles/2020PA.dir/build.make
2020PA.exe: CMakeFiles/2020PA.dir/linklibs.rsp
2020PA.exe: CMakeFiles/2020PA.dir/objects1.rsp
2020PA.exe: CMakeFiles/2020PA.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\2020PA\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable 2020PA.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\2020PA.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2020PA.dir/build: 2020PA.exe

.PHONY : CMakeFiles/2020PA.dir/build

CMakeFiles/2020PA.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\2020PA.dir\cmake_clean.cmake
.PHONY : CMakeFiles/2020PA.dir/clean

CMakeFiles/2020PA.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\2020PA G:\2020PA G:\2020PA\cmake-build-debug G:\2020PA\cmake-build-debug G:\2020PA\cmake-build-debug\CMakeFiles\2020PA.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2020PA.dir/depend

