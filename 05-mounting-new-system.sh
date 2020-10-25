#!/bin/env bash

o=defaults,x-mount.mkdir
o_btrfs=$o,compress=lzo,ssd,noatime

mount -t btrfs -o subvol=@,$o_btrfs LABEL=system /mnt
mount -t btrfs -o subvol=@home,$o_btrfs LABEL=system /mnt/home
mount -t btrfs -o subvol=@snapshots,$o_btrfs LABEL=system /mnt/.snapshots
mount -t btrfs -o subvol=@log,$o_btrfs LABEL=system /mnt/var/log
mount -o $o LABEL=EFI /mnt/boot

echo "The following btrfs subvolumes were mounted"
mount | grep --color=always btrfs