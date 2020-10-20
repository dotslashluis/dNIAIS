#!/bin/env bash

DRIVE=/dev/nvme0n1

# Clear GPT tables
sgdisk --zap-all $DRIVE

# Create new partition table with labels
sgdisk --clear \
    --new=1:0:+550MiB --typecode=1:ef00 --change-name=1:EFI \
    --new=2:0:+8GiB   --typecode=2:8200 --change-name=2:swap \
    --new=3:0:0       --typecode=3:8300 --change-name=3:cryptsystem \
    $DRIVE

echo "Done"
echo "Do the next steps manually to prevent problems with the installation"
