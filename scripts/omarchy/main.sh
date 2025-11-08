#!/bin/bash

set -e

script_directory=$(dirname "$0")

"$script_directory"/remove-webapps.sh
"$script_directory"/configure-terminal.sh
"$script_directory"/configure-github-auth.sh
"$script_directory"/configure-web-browser.sh
"$script_directory"/install-additional-packages.sh
"$script_directory"/stow-dotfiles.sh

