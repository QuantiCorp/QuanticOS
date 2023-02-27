#
# gcc-cmake-toolchain.cmake - CMake Toolchain file
#
# Copyright (c) 2023 Quantico Corproation
#
# License: See LICENSE file for details.
#
# Author: Quantico Corproation
# Date Created: 2 26 2023
#
# Description - Toolchain file for cmake to use gcc cross compiler
#

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR i686)

SET(CMAKE_C_COMPILER_WORKS 1)
SET(CMAKE_CXX_COMPILER_WORKS 1)

set(CMAKE_CROSSCOMPILING 1)

set(TOOLCHAIN_PREFIX "i686-elf-")
set(I686_TOOLCHAIN_DIR /mnt/c/Projects/TSS/tools/cross/bin)

set(CMAKE_C_COMPILER "${I686_TOOLCHAIN_DIR}/i686-elf-gcc")
set(CMAKE_ASM_COMPILER "${I686_TOOLCHAIN_DIR}/i686-elf-as")
set(CMAKE_CXX_COMPILER "${I686_TOOLCHAIN_DIR}/i686-elf-g++")


# Default C Compiler Flags
set(CMAKE_C_FLAGS_INIT "-Wall -Wextra -D__is_kernel -Iinclude -ffreestanding --sysroot=/mnt/c/Projects/TSS/QuanticOS/build/sysroot -isystem=/mnt/c/Projects/TSS/QuanticOS/build/sysroot/usr/include")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS_INIT}" CACHE STRING "" FORCE)
set(CMAKE_ASM_FLAGS_INIT "")
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS_INIT}" CACHE STRING "" FORCE)
set(CMAKE_EXE_LINKER_FLAGS_INIT "-T /mnt/c/Projects/TSS/QuanticOS/kernel/arch/i386/linker.ld")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS_INIT}" CACHE STRING "" FORCE)