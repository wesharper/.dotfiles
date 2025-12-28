#!/bin/bash

echo "Ensuring linux-cachyos kernel and headers are installed"
sudo pacman -Syu --noconfirm linux-cachyos linux-cachyos-headers

if grep -q "omarchy_linux-cachyos" /boot/limine.conf; then
  echo "CachyOS boot entry already set in bootloader"
else
  echo "CachyOS boot entry not found"
  echo "Regenerating limine.conf"
  sudo limine-mkinitcpio 
fi

if grep -q "remember_last_entry: yes" /boot/limine.conf; then
  echo "Bootloader already configured to remember last entry, skipping"
else
  echo "Configuring bootloader to remember last used boot entry"
  sudo sed -i '/^default_entry/a remember_last_entry: yes' /boot/limine.conf
fi

