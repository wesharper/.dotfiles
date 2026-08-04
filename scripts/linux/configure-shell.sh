#!/bin/bash

echo "Setting default shell to zsh"
# Change the default shell to zsh
chsh -s /usr/bin/zsh

echo "Reloading shell environment"
source "$HOME/.zshenv" && source "$ZDOTDIR/.zshrc"
