#!/bin/zsh

if command -v brew; then 
  echo "Updating homebrew"
  brew update
else
  echo "Installing homebrew"
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
fi
