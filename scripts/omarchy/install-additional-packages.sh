#!/bin/bash

echo "Installing additional applications and tools"
yay -S --noconfirm --needed fastmail bluetui tmux

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing homebrew recommendations"
# add homebrew to path
reload
brew install gcc
