#!/bin/bash

echo "Installing git-credential-manager and dependencies"
yay -S --noconfirm --needed pass git-credential-manager-bin

if [[ ! $(gpg --list-keys "13283469+wesharper@users.noreply.github.com" 2>/dev/null) ]]; then
  echo "Setting up GPG credential store (needed for git-credential-manager)"
  gpg --quick-gen-key -u "13283469+wesharper@users.noreply.github.com"
  pass init "13283469+wesharper@users.noreply.github.com"
fi

