#!/bin/bash

# https://github.com/CachyOS/linux-cachyos?tab=readme-ov-file#quick-installation
echo "Running CachyOS automated setup"
# Download and extract the installer
curl -O https://mirror.cachyos.org/cachyos-repo.tar.xz --output-dir ~/Downloads
tar xvf ~/Downloads/cachyos-repo.tar.xz -C ~/Downloads

# Run the automated installer
current_dir=$(pwd)
cd ~/Downloads/cachyos-repo || exit 1

# the cachyos-repo.sh script assumes that the shell is running from within the directory
sudo ./cachyos-repo.sh
cd "$current_dir" || exit 1

