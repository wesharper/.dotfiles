#!/bin/bash

set -e

WORKSPACE="$HOME/Work"

if [ -d "$WORKSPACE" ]; then
  echo "Workspace folder exists, skipping creation"
else
  echo "Creating workspace folder"
  mkdir "$WORKSPACE" 
fi

if [ -d "$WORKSPACE/.dotfiles" ]; then
  echo "Dotfiles repo exists, pulling latest changes"
  cd "$WORKSPACE/.dotfiles" || exit 1
  git pull --recurse-submodules
else
  echo "Cloning dotfiles repo"
  git clone --recurse-submodules https://github.com/wesharper/.dotfiles.git "$WORKSPACE/.dotfiles"
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
