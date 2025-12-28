#!/bin/bash

echo "Installing additional applications"
yay -S --noconfirm --needed fastmail bluetui tmux

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
