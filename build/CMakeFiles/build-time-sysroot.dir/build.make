# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Projects/TSS/QuanticOS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Projects/TSS/QuanticOS/build

# Utility rule file for build-time-sysroot.

# Include any custom commands dependencies for this target.
include CMakeFiles/build-time-sysroot.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/build-time-sysroot.dir/progress.make

CMakeFiles/build-time-sysroot:
	/usr/local/bin/cmake -E make_directory sysroot/usr/include

build-time-sysroot: CMakeFiles/build-time-sysroot
build-time-sysroot: CMakeFiles/build-time-sysroot.dir/build.make
.PHONY : build-time-sysroot

# Rule to build all files generated by this target.
CMakeFiles/build-time-sysroot.dir/build: build-time-sysroot
.PHONY : CMakeFiles/build-time-sysroot.dir/build

CMakeFiles/build-time-sysroot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/build-time-sysroot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/build-time-sysroot.dir/clean

CMakeFiles/build-time-sysroot.dir/depend:
	cd /mnt/c/Projects/TSS/QuanticOS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Projects/TSS/QuanticOS /mnt/c/Projects/TSS/QuanticOS /mnt/c/Projects/TSS/QuanticOS/build /mnt/c/Projects/TSS/QuanticOS/build /mnt/c/Projects/TSS/QuanticOS/build/CMakeFiles/build-time-sysroot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/build-time-sysroot.dir/depend
