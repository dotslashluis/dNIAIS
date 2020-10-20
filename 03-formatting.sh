#!/bin/env bash

mkfs.fat -F32 -n EFI /dev/disk/by-partlabel/EFI

mkswap -L swap /dev/disk/by-partlabel/swap
swapon -L swap

mkfs.btrfs --force --label system /dev/mapper/system



