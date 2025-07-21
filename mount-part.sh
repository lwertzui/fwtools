#!/bin/bash
#mount-part
#Usage: mount-part [FILE]
# mount binary file system to /mnt/[FILE]
#Example: ./mount-part part1.bin

SRC=$1
umount /mnt/$1 || mkdir /mnt/$1 
mount -o loop $SRC /mnt/$1 || mount $SRC /mnt/$1
cd /mnt/$1 || exit 1
exec bash
