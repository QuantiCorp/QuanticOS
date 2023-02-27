# QuanticOS
Quantico Operating System - QOS


How the `libQuantiClib` Library is Compiled and Linked in a Freestanding Operating System Kernel Using `--sysroot`
=========================================================================================================

In a freestanding operating system kernel, the C standard library is not available, so any kernel-level functions or data structures that the operating system needs must be implemented from scratch or provided by a custom library. One common approach is to create a custom library called `libQuantiClib`, which provides kernel-level functions and data structures that can be used by the operating system.

Compiling `libQuantiClib` as a Freestanding Library
------------------------------------------

To make `libQuantiClib` freestanding, it must be compiled with the `-ffreestanding` option. This option tells the compiler that it should assume there is no C standard library available and should not rely on any standard library functions or headers. Instead, the `libQuantiClib` library must provide its own implementations of any standard library functions or headers that are needed.

In addition to the `-ffreestanding` option, other compiler flags may be needed to ensure that the `libQuantiClib` library is compiled correctly for a freestanding environment.

Linking `libQuantiClib` Using `--sysroot`
--------------------------------

Once `libQuantiClib` has been compiled as a static library, it can be linked into the operating system kernel using the `--sysroot` compiler option. The `--sysroot` option specifies the root directory for system headers and libraries. When the compiler encounters an `#include` directive or a library function call, it looks in the specified directory for system headers and libraries, instead of the standard system directories.

To use `--sysroot` when building the kernel, the root directory is specified in the `config.sh` file, which is called by the `build.sh` script. The `sysroot` directory is then passed to the kernel Makefile using the `SYSROOT` variable.

The kernel Makefile includes the `libQuantiClib` headers by adding the `$(SYSROOT)/include` directory to the include path using the `-I` option. The `libQuantiClib` static library is included by adding the `$(SYSROOT)/lib/libQuantiClib.a` file to the linker options using the `-l` option.

Conclusion
----------

In summary, the `libQuantiClib` library is compiled as a freestanding library using the `-ffreestanding` option, and is linked into the operating system kernel using the `--sysroot` compiler option. The `--sysroot` option ensures that the correct system headers and libraries are used during the build process, while the `-ffreestanding` option ensures that the `libQuantiClib` library is compiled correctly for a freestanding environment. By following these steps, a custom library like `libQuantiClib` can be used to provide kernel-level functions and data structures in a freestanding operating system kernel.
