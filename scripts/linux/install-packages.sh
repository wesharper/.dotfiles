#!/bin/bash

echo "Installing git-credential-manager and dependencies"
yay -S --noconfirm --needed pass git-credential-manager-bin

echo "Installing font"
yay -S --noconfirm --needed ttf-roboto-mono-nerd

echo "Installing terminal and shell packages"
yay -S --noconfirm --needed ghostty zsh zsh-syntax-highlighting zsh-autosuggestions

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing homebrew recommendations"
# reload to include homebrew in path
reload
brew install gcc
