# brew completions on Mac requires this to be run in the .zprofile step
if [[ `uname` == "Darwin" ]]; then
  # since the shellenv command adds `brew` to path, we need to check the binary path instead of relying on `brew shellenv`
  if [[ -e /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  if [[ -e /opt/homebrew/bin/rbenv ]]; then
    eval "$(rbenv init - --no-rehash zsh)"
  fi
fi
