#!/bin/env bash

# mount the system temporarily to create the subvolumes.
mount -t btrfs LABEL=system /mnt

# creating the subvolumes
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@snapshots
btrfs subvolume create /mnt/@log

echo "The resulting subvolumes were created"
ls --color --1 /mnt


