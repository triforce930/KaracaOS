if [ $1="format" ]; then
    qemu-img create -f qcow2 karacaos.img 10M
fi

qemu-system-x86_64 -cdrom karacaos.iso -drive format=qcow2,file=karacaos.img