#!/bin/bash

# set -e

script_directory=$(dirname "$0")

"$script_directory"/setup-cachyos-kernel-and-mirrors.sh
"$script_directory"/install-gaming-packages.sh
"$script_directory"/update-environment.sh
