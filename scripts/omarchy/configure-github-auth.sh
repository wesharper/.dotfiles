#!/bin/bash

if [[ ! $(gpg --list-keys "13283469+wesharper@users.noreply.github.com" &>/dev/null) ]]; then
  echo "Setting up GPG credential store (needed for git-credential-manager)"
  gpg --gen-key -u "13283469+wesharper@users.noreply.github.com"
  pass init "13283469+wesharper@users.noreply.github.com"
fi

