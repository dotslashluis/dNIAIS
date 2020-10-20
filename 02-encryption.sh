#!/bin/env bash

cryptsetup luksFormat --align-payload=8192 -s 256 -c aes-xts-plain64 /dev/disk/by-partlabel/cryptsystem
cryptsetup open /dev/disk/by-partlabel/cryptsystem system

echo "DONENZO"