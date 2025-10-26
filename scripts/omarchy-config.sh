#!/bin/bash
set -eoux pipefail

echo "Installing packages"
sudo pacman -Syu pass steam zsh stow ghostty zsh-syntax-highlighting
yay -Syu git-credential-manager-bin brave-bin

echo "Interactively remove webapps"
omarchy-webapp-remove 

echo "Setting up GPG credential store (needed for git-credential-manager)"
git-credential-manager configure
gpg --gen-key -u "13283469+wesharper@users.noreply.github.com"
pass init "13283469+wesharper@users.noreply.github.com"
