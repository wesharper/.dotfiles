#!/bin/zsh

set -e

if [ -d ~/dev/.dotfiles ]; then
  echo "Dotfiles repo exists, pulling latest changes"
  cd ~/dev/.dotfiles || exit 1
  git pull
else
  echo "Cloning dotfiles repo"
  git clone https://github.com/wesharper/.dotfiles.git ~/dev/.dotfiles
fi

script_directory=~/dev/.dotfiles/scripts/darwin

"$script_directory"/install-xcode-cli-tools.sh
"$script_directory"/configure-preferences.sh
"$script_directory"/configure-homebrew.sh
"$script_directory"/stow-dotfiles.sh
"$script_directory"/install-additional-packages.sh
