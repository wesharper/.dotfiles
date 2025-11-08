#!/bin/bash

echo "Installing utilities"
yay -S --noconfirm --needed pass stow git-credential-manager-bin

echo "Installing terminal and shell packages"
yay -S --noconfirm --needed ghostty zsh zsh-syntax-highlighting zsh-autosuggestions

echo "Installing applications"
yay -S --noconfirm --needed brave-bin fastmail bluetui

