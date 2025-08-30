#!/bin/bash
set -eoux pipefail

if [[ $(uname) = "Darwin" ]]; then
  echo "Configuring OS defaults"
  source ./scripts/darwin-config.sh

  echo "Installing homebrew"
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
fi

if [[ $(uname) = "Linux" ]]; then
  echo "Configuring OS defaults"
  source ./scripts/omarchy-config.sh
fi

echo "Installing stow"
brew install stow

echo "Stowing dotfiles"
stow .

echo "Installing software via global Brewfile"
brew bundle --global

echo "All done!"
