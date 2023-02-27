# CMakeLists.txt - CMake configuration file for ProjectName
#
# Copyright (C) 2023 Quantico Corporation
#
# License: See LICENSE file for details.
#
# Author: TheSoftwareSage
# Date Created: February 26, 2023
#
# Description: CMake configuration file for building and installing ProjectName
#

cmake_minimum_required(VERSION 3.7)

project(QuanticOS C ASM)

set(CMAKE_TOOLCHAIN_FILE support/cmake/gcc-cmake-toolchain.cmake)

# set(I686_TOOLCHAIN_DIR /mnt/c/Projects/TSS/tools/cross/bin/)

# set(CMAKE_C_COMPILER "${I686_TOOLCHAIN_DIR}/i686-elf-gcc")
# set(CMAKE_ASM_COMPILER "${I686_TOOLCHAIN_DIR}/i686-elf-as")
# set(CMAKE_CXX_COMPILER "${I686_TOOLCHAIN_DIR}/i686-elf-g++")



set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "")

SET(BUILDVERSION "" CACHE STRING "M.M.P")
SET(BUILDCONFIG "" CACHE STRING "Build Configuration")

SET(BUILD_PREFIX usr/local)

cmake_policy(SET CMP0076 NEW)

add_custom_target(build-time-sysroot ALL
    COMMAND ${CMAKE_COMMAND} -E make_directory sysroot/usr/include)

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/libc/include/. DESTINATION sysroot/usr/include)
file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/kernel/include/. DESTINATION sysroot/usr/include)

# add_compile_definitions(SOFTWARE_MAJOR=${MAJOR})
# add_compile_definitions(SOFTWARE_MINOR=${MINOR})
# add_compile_definitions(SOFTWARE_PATCH=${PATCH})

include_directories("build/sysroot/usr/include")
include_directories("build/sysroot/usr/include/kernel")
include_directories("build/sysroot/usr/include/sys")

add_library(QuantiClib)
set_property(TARGET QuantiClib PROPERTY C_STANDARD 99)
add_subdirectory(libc)

# Set the compiler flags for the QuantiClib static library
target_compile_options(QuantiClib PRIVATE
    -O3 -g
    -ffreestanding
    -Wall -Wextra
    -D__is_libQuantiClib
    -D__is_libc -Iinclude
)

add_executable(libQuantiClib.a $<TARGET_OBJECTS:QuantiClib>)


add_library(QuantiKernel)
set_property(TARGET QuantiKernel PROPERTY C_STANDARD 99)
add_subdirectory(kernel)


# Set the compiler flags for the QuantiClib static library
target_compile_options(QuantiKernel PRIVATE
    -O3 -g
    # --sysroot=build/sysroot
    # -isystem=build/sysroot/usr/include
)

target_link_libraries(QuantiKernel
    QuantiClib
    -nostdlib -lgcc
    -Wl,-Map=QuantiKernel.map

)

add_executable(QuantiKernel.kernel $<TARGET_OBJECTS:QuantiKernel>)

target_link_libraries(QuantiKernel.kernel
    QuantiKernel
)

add_custom_command(OUTPUT QuantiKernel.kernel
    COMMAND ./mnt/c/Projects/TSS/QuanticOS/support/iso.sh
)

#target_link_libraries(libQuantiClib.a QuantiClib)

