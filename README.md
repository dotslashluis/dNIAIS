# dotslashluis' Non Interactive Arch Installation Scripts (dNIAIS)

## What's this?

These are scripts that I created based on [Altercation's Bullet Proof Arch Install](https://wiki.archlinux.org/index.php/User:Altercation/Bullet_Proof_Arch_Install) article on the Arch Wiki that I use to create an Arch Linux that can fit my OCD.  These scripts are not meant for other users to blindly clone and use.  These are specifically created to work on my current system and I have not tested them on any other setup nor VM.

If the reader (for whatever reason) wants to use these scripts, please go to the aforementioned Arch Wiki blog post/article and the various articles listed below so you understand what is going on:

* [Installation guide](https://wiki.archlinux.org/index.php/Installation_guide)

* [Btrfs](https://wiki.archlinux.org/index.php/Btrfs)

* [Dm-crypt](https://wiki.archlinux.org/index.php/Dm-crypt)

* [Snapper](https://wiki.archlinux.org/index.php/Snapper)

* [Altercation's post](https://wiki.archlinux.org/index.php/User:Altercation/Bullet_Proof_Arch_Install)

Altercation did a way better job than I could ever do explaining what is going on in each step, so make sure to check his article if you do not understand what is going on.

## Why?

I tend to hop between distributions because I like to test new features and experiment with them.  I usually come back to Arch since it's the easiest minimalist distribution to install.

By creating this repository I can simply install git on the Arch ISO, clone the repository and then run the scripts in order.

## WTF do you mean with Non Interactive?

I'm a lazy bastard that finds it annoying to maintain scripts that are 300 lines long if the script is used for a trivial task and does not contribute anything to the world.  Therefore I didn't bother to add any interactivity to them since it will just make them bloated, slow and, most importantly, be a waste of my time.

That being said, these scripts are meant to be ran manually one by one ( `bash example.sh`).   **Do not** run them in batch since I **did not** create a system to handle errors and if any part of the script fails it will probably just continue with the rest and damage your system.

## Okay, then what do I end up with if I run these scripts?

As I said, I based these scripts on Altercation's, so the system you end up with is pretty similar.  The following image is a representation on the layout that the scripts create.



![layout.png](/home/luisc/.config/marktext/images/c87233bec16faa9901019d2eebcaaab0efafab1c.png)

As pictured, this is my preferred layout.  This way I can easily back up and rollback my system with the help of Snapper.

The size of each partition is usually 550 Mb for the EFI, 8 Gb for the swap and the rest of the disk for the LUKS container. 

The main differences between this and Altercation's are that the swap partition is not encrypted and that the subvolume layout is based on [the suggested one in the Snapper article](https://wiki.archlinux.org/index.php/Snapper#Suggested_filesystem_layout).
