#!/bin/bash

set -e

cd "$WORKSPACE/.dotfiles" || exit 1

script_directory="$WORKSPACE/.dotfiles/scripts/linux"

"$script_directory"/install-packages.sh
"$script_directory"/stow-dotfiles.sh
"$script_directory"/configure-shell.sh
"$script_directory"/configure-gcm.sh
