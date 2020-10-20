#!/bin/env bash
# variables to type less later
mount -t btrfs LABEL=system /mnt

# snapper hierarchy
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@snapshots
btrfs subvolume create /mnt/@log

echo "Remember to check /mnt to see if everything went k"
echo "If all is k then umount"