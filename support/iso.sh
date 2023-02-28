#!/bin/sh
set -e

mkdir -p /mnt/c/Projects/TSS/QuanticOS/build/isodir
mkdir -p /mnt/c/Projects/TSS/QuanticOS/build/isodir/boot
mkdir -p /mnt/c/Projects/TSS/QuanticOS/build/isodir/boot/grub

# cp sysroot/boot/QuanticOS.kernel isodir/boot/QuanticOS.kernel
cp /mnt/c/Projects/TSS/QuanticOS/build/QuantiKernel.kernel /mnt/c/Projects/TSS/QuanticOS/build/isodir/boot/QuanticOS.kernel
cat > /mnt/c/Projects/TSS/QuanticOS/build/isodir/boot/grub/grub.cfg << EOF
menuentry "QuanticOS" {
	multiboot /boot/QuanticOS.kernel
}
EOF

grub-mkrescue -o QuanticOS.iso /mnt/c/Projects/TSS/QuanticOS/build/isodir
