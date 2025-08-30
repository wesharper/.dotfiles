#!/bin/bash
set -eoux pipefail

echo "Installing zsh"
sudo pacman -Syu zsh

echo "Changing default shell"
chsh -s /usr/bin/zsh

echo "Installing homebrew dependencies"
sudo pacman -Syu base-devel procps-ng curl file git

echo "Installing homebrew"
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

echo "Configuring homebrew path for bash"
echo >>~/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo "Removing conflicting default configurations"
rm -rf ~/.config/ghostty/
rm -rf ~/.config/lazygit/
rm -rf ~/.config/nvim/
