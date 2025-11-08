#!/bin/bash

# https://wiki.cachyos.org/configuration/gaming/
echo "Installing CachyOS meta packages"
sudo pacman -Syu --noconfirm cachyos-gaming-meta cachyos-gaming-applications

echo "Installing RADV drivers"
yay -Syu --noconfirm --needed vulkan-radeon mesa

