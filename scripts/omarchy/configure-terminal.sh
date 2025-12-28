#!/bin/bash

echo "Installing font"
yay -S --noconfirm --needed ttf-roboto-mono-nerd

echo "Installing terminal and shell packages"
yay -S --noconfirm --needed ghostty zsh zsh-syntax-highlighting zsh-autosuggestions

# Check if zsh is already the default shell
if [ "$SHELL" = "/usr/bin/zsh" ]; then
    echo "Zsh is already the default shell."
    exit 0
fi

# Add zsh to /etc/shells if not already there
if ! grep -q "/usr/bin/zsh" /etc/shells; then
    echo "/usr/bin/zsh" | sudo tee -a /etc/shells >/dev/null
fi

echo "Setting default shell to zsh"
# Change the default shell to zsh
chsh -s /usr/bin/zsh

