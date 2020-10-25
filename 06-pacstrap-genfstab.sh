#!/bin/env bash

# installing the base packages
pacstrap /mnt base base-devel linux linux-headers linux-firmware

# generating the fstab using labels
genfstab -L -p /mnt >> /mnt/etc/fstab

echo "The following fstab was generated, remember to check for errors"
cat /mnt/etc/fstab