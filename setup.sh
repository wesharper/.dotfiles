#!/bin/bash

set -e

cd "$(dirname "$0")" || exit 1

if [[ $(uname) = "Darwin" ]]; then
  echo "Starting MacOS configuration script"
  source ./scripts/darwin/main.sh
fi

if [[ $(uname) = "Linux" ]]; then
  echo "Configuring Omarchy defaults"
  source ./scripts/omarchy/main.sh
fi

echo "All done!"
