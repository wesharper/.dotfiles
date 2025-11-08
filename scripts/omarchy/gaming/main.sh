#!/bin/bash

set -e

script_directory=$(dirname "$0")

"$script_directory"/install-gaming-kernel.sh
"$script_directory"/install-gaming-packages.sh
"$script_directory"/update-environment.sh
