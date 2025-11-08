#!/bin/zsh

set -e

script_directory=$(dirname "$0")

"$script_directory"/install-xcode-cli-tools.sh
"$script_directory"/configure-preferences.sh
"$script_directory"/configure-homebrew.sh
"$script_directory"/stow-dotfiles.sh
"$script_directory"/install-additional-packages.sh
