#!/bin/bash

source 'error_handling.sh'

echo -n "Installing hardened kernel and headers..."
pacman -S --noconfirm linux-hardened linux-hardened-headers && echo -n " ✅" || echo -en " ❌\n\tERROR: " && print_error

echo -n "Recreating ramdisk environment..."
mkinitcpio -p linux-hardened && echo -n " ✅" || echo -en " ❌\n\tERROR: " && print_error

echo -n "Updating grub config..."
grub-mkconfig -o /boot/grub/grub.cfg && echo -n " ✅" || echo -en " ❌\n\tERROR: " && print_error

exit 0
