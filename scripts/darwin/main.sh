#!/bin/zsh

set -e

script_directory=$(dirname "$0")

"$script_directory"/configure-defaults.sh
"$script_directory"/configure-homebrew.sh
"$script_directory"/stow-dotfiles.sh
"$script_directory"/install-additional-packages.sh
