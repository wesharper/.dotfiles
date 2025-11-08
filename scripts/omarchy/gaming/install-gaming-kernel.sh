#!/bin/bash

# https://github.com/CachyOS/linux-cachyos?tab=readme-ov-file#quick-installation
echo "Running CachyOS automated setup"
# Download and extract the installer
curl -O https://mirror.cachyos.org/cachyos-repo.tar.xz --output-dir ~/Downloads
tar xvf ~/Downloads/cachyos-repo.tar.xz -C ~/Downloads

# Run the automated installer
sudo ~/Downloads/cachyos-repo/cachyos-repo.sh

