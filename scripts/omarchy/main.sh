#!/bin/bash

set -e

script_directory=$(dirname "$0")

"$script_directory"/remove-webapps.sh
"$script_directory"/install-packages.sh
"$script_directory"/set-default-shell.sh
"$script_directory"/configure-github-auth.sh
"$script_directory"/stow-dotfiles.sh

