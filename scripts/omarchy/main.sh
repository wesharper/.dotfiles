#!/bin/bash

set -e

if [ -d ~/dev/.dotfiles ]; then
  echo "Dotfiles repo exists, pulling latest changes"
  cd ~/dev/.dotfiles || exit 1
  git pull
else
  echo "Cloning dotfiles repo"
  git clone https://github.com/wesharper/.dotfiles.git ~/dev/.dotfiles
fi

cd ~/dev/.dotfiles || exit 1

script_directory=~/dev/.dotfiles/scripts/omarchy

"$script_directory"/remove-webapps.sh
"$script_directory"/configure-terminal.sh
"$script_directory"/configure-github-auth.sh
"$script_directory"/configure-web-browser.sh
"$script_directory"/install-additional-packages.sh
"$script_directory"/stow-dotfiles.sh

