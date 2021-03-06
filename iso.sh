export CROSS_COMP_BASE=$HOME/opt/cross

export PATH=$PATH:$CROSS_COMP_BASE/bin

mkdir -p sysroot/boot/grub

cat > sysroot/boot/grub/grub.cfg << EOF
menuentry "KaOSVengeance" {
    multiboot /boot/karacaos.kernel
}
EOF
grub-mkrescue -o karacaos.iso sysroot --directory=$CROSS_COMP_BASE/lib/grub/i386-pc
