qemu-system-riscv64 -nographic -machine virt -kernel ../../../linux-5.14.3/arch/riscv/boot/Image -device virtio-blk-device,drive=hd0 -append "root=/dev/vda ro console=ttyS0" -bios default -drive file=rootfs.img,format=raw,id=hd0 -S -s

