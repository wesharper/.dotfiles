#!/bin/bash

set -e

cd "$WORKSPACE/.dotfiles" || exit 1

script_directory="$WORKSPACE/.dotfiles/scripts/omarchy"

"$script_directory"/stow-dotfiles.sh
"$script_directory"/remove-webapps.sh
"$script_directory"/configure-shell.sh
"$script_directory"/configure-github-auth.sh
"$script_directory"/configure-web-browser.sh
"$script_directory"/install-additional-packages.sh

