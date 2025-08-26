#!/bin/bash

#########################################################################
# File Name: makefs.sh
# Created on: 2025-08-24 15:54:50
# Author: wu
# Last Modified: 2025-08-24 15:55:24
# Description: 
#########################################################################

rm -rf rootfs.ext3
rm -rf fs
dd if=/dev/zero of=./rootfs.ext3 bs=1M count=32
mkfs.ext3 rootfs.ext3
mkdir fs
mount -o loop rootfs.ext3 ./fs
cp -rf ./_install/* ./fs
umount ./fs
gzip --best -c rootfs.ext3 > rootfs.img.gz
