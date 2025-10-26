#!/bin/bash
set -eoux pipefail

echo "Installing essentials"
sudo pacman -Syu zsh stow

echo "Installing git-credential-manager"
yay -S git-credential-manager

echo "Setting up GPG credential store (needed for git-credential-manager)"
gpg --gen-key -u "13283469+wesharper@users.noreply.github.com"
pass init "13283469+wesharper@users.noreply.github.com"
