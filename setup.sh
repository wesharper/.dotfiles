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
  source "$WORKSPACE/.dotfiles/scripts/darwin/main.sh"
fi

if [[ $(uname) = "Linux" ]]; then
  if grep -q "^ID=cachyos" /etc/os-release; then
    echo "Starting Linux configuration script"
    source "$WORKSPACE/.dotfiles/scripts/linux/main.sh"
  else
    echo "Setup script currently only works on CachyOS, check scripts/linux/main.sh for a manual entry point"
  fi
fi

echo "All done!"
