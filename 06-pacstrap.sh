#!/bin/env bash

pacstrap /mnt base base-devel linux linux-headers linux-firmware

echo "From here onwards u r alon >:C"
echo "iust jking, chroot and install everything else"
echo "DO NUT FRGET TO FSTAB UR SYSTEM BIOTCH"

genfstab -L -p /mnt >> /mnt/etc/fstab

echo "ust jking, i've done it 4 u, luv u bae"