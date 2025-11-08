#!/bin/bash

script_directory=$(dirname "$0")
"$script_directory"/00-remove-webapps.sh
"$script_directory"/10-install-packages.sh
"$script_directory"/20-set-default-shell.sh
"$script_directory"/30-configure-github-auth.sh
"$script_directory"/40-stow-dotfiles.sh

