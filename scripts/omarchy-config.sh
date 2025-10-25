#!/bin/bash
set -eoux pipefail

echo "Installing zsh"
sudo pacman -Syu zsh

echo "Installing homebrew dependencies"
sudo pacman -Syu base-devel procps-ng curl file git

echo "Installing homebrew"
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
echo "Configuring homebrew path for bash"
echo >>~/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo "Installing git-credential-manager"
yay -S git-credential-manager-bin

echo "Setting up GPG credential store (needed for git-credential-manager)"
gpg --gen-key -u "13283469+wesharper@users.noreply.github.com"
pass init "13283469+wesharper@users.noreply.github.com"
