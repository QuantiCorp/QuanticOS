#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/QuanticOS.kernel isodir/boot/QuanticOS.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "QuanticOS" {
	multiboot /boot/QuanticOS.kernel
}
EOF

grub-mkrescue -o QuanticOS.iso isodir
