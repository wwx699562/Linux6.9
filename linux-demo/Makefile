run:
	qemu-system-x86_64 \
		-kernel bzImage \
		-initrd rootfs.img.gz \
		-nographic \
		-append "root=/dev/ram init=/linuxrc console=ttyS0"

debug:
	qemu-system-x86_64 \
		-kernel bzImage \
		-initrd rootfs.img.gz \
		-nographic \
		-append "root=/dev/ram init=/linuxrc console=ttyS0 nokaslr" \
		-s -S
