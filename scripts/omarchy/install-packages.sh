#!/bin/bash

echo "Installing utilities"
yay -S --no-confirm --needed pass stow git-credential-manager-bin

echo "Installing terminal and shell packages"
yay -S --no-confirm --needed ghostty zsh zsh-syntax-highlighting zsh-autosuggestions

echo "Installing applications"
yay -S --no-confirm --needed brave-bin fastmail

