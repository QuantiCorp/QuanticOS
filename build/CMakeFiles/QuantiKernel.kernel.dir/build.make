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

# Include any dependencies generated for this target.
include CMakeFiles/QuantiKernel.kernel.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/QuantiKernel.kernel.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/QuantiKernel.kernel.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/QuantiKernel.kernel.dir/flags.make

# Object files for target QuantiKernel.kernel
QuantiKernel_kernel_OBJECTS =

# External object files for target QuantiKernel.kernel
QuantiKernel_kernel_EXTERNAL_OBJECTS = \
"/mnt/c/Projects/TSS/QuanticOS/build/CMakeFiles/QuantiKernel.dir/kernel/arch/i386/tty.c.obj" \
"/mnt/c/Projects/TSS/QuanticOS/build/CMakeFiles/QuantiKernel.dir/kernel/arch/i386/boot.S.obj" \
"/mnt/c/Projects/TSS/QuanticOS/build/CMakeFiles/QuantiKernel.dir/kernel/arch/i386/crti.S.obj" \
"/mnt/c/Projects/TSS/QuanticOS/build/CMakeFiles/QuantiKernel.dir/kernel/kernel/kernel.c.obj"

QuantiKernel.kernel: CMakeFiles/QuantiKernel.dir/kernel/arch/i386/tty.c.obj
QuantiKernel.kernel: CMakeFiles/QuantiKernel.dir/kernel/arch/i386/boot.S.obj
QuantiKernel.kernel: CMakeFiles/QuantiKernel.dir/kernel/arch/i386/crti.S.obj
QuantiKernel.kernel: CMakeFiles/QuantiKernel.dir/kernel/kernel/kernel.c.obj
QuantiKernel.kernel: CMakeFiles/QuantiKernel.kernel.dir/build.make
QuantiKernel.kernel: libQuantiKernel.a
QuantiKernel.kernel: libQuantiClib.a
QuantiKernel.kernel: CMakeFiles/QuantiKernel.kernel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Projects/TSS/QuanticOS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking C executable QuantiKernel.kernel"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/QuantiKernel.kernel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/QuantiKernel.kernel.dir/build: QuantiKernel.kernel
.PHONY : CMakeFiles/QuantiKernel.kernel.dir/build

CMakeFiles/QuantiKernel.kernel.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/QuantiKernel.kernel.dir/cmake_clean.cmake
.PHONY : CMakeFiles/QuantiKernel.kernel.dir/clean

CMakeFiles/QuantiKernel.kernel.dir/depend:
	cd /mnt/c/Projects/TSS/QuanticOS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Projects/TSS/QuanticOS /mnt/c/Projects/TSS/QuanticOS /mnt/c/Projects/TSS/QuanticOS/build /mnt/c/Projects/TSS/QuanticOS/build /mnt/c/Projects/TSS/QuanticOS/build/CMakeFiles/QuantiKernel.kernel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/QuantiKernel.kernel.dir/depend

