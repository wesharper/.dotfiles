#!/bin/bash

echo "Installing stow"
yay -S --noconfirm --needed stow

echo "Stowing dotfiles (with adopt)"
if pwd | grep -q '.dotfiles$'; then
  stow . --adopt
else
  echo "You must run the stow command from the root of the .dotfiles directory"
fi
