#!/bin/bash

set -e

if [ -d ~/dev ]; then
  echo "'dev' folder exists, skipping creation"
else
  echo "Creating 'dev' folder"
  mkdir ~/dev
fi

if [[ $(uname) = "Darwin" ]]; then
  echo "Starting MacOS configuration script"
  curl https://raw.githubusercontent.com/wesharper/.dotfiles/refs/heads/main/scripts/darwin/main.sh | zsh
fi

if [[ $(uname) = "Linux" ]]; then
  echo "Starting Omarchy configuration script"
  curl https://raw.githubusercontent.com/wesharper/.dotfiles/refs/heads/main/scripts/omarchy/main.sh | bash
fi

echo "All done!"
