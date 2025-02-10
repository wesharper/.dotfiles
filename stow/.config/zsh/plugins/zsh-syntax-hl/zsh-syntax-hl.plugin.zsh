if [[ `uname` == "Darwin" ]]; then
  # since the shellenv command adds `brew` to path, we need to check the binary path instead of relying on `brew shellenv`
  if [[ -e /opt/homebrew/bin/brew ]]; then
    source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  fi
fi
