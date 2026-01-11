#!/bin/bash

# set -e

echo "Downloading CachyOS install script"
cd ~/Downloads || exit 1
curl -O https://mirror.cachyos.org/cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz && cd cachyos-repo || exit 1

echo "Running CachyOS installer"
sudo ./cachyos-repo.sh

echo "Ensuring linux-cachyos kernel and headers are installed"
sudo pacman -Syu --noconfirm linux-cachyos linux-cachyos-headers

if grep -q "omarchy_linux-cachyos" /boot/limine.conf; then
  echo "CachyOS boot entry already set in bootloader"
else
  echo "Adding CachyOS boot entry to bootloader"
  echo "Regenerating limine.conf"
  sudo limine-mkinitcpio 
fi

if grep -q "remember_last_entry: yes" /boot/limine.conf; then
  echo "Bootloader already configured to remember last entry, skipping"
else
  echo "Configuring bootloader to remember last used boot entry"
  sudo sed -i '/^default_entry/a remember_last_entry: yes' /boot/limine.conf
fi
