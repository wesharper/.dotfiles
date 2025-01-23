if [[ `uname` == "Darwin" ]]; then
  if type brew &>/dev/null
  then
    eval "$(brew shellenv)"
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  fi
fi
