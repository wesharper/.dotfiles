if [[ `uname` == "Darwin" ]]; then
  # since the shellenv command adds `brew` to path, we need to check the binary path instead of relying on `brew shellenv`
  if [[ -e /opt/homebrew/bin/brew ]]; then
    source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  fi
fi

export ZSH_AUTOSUGGEST_HISTORY_IGNORE="(git|cd) *"
export ZSH_AUTOSUGGEST_COMPLETION_IGNORE="(git|cd) *"

bindkey '^ ' autosuggest-accept
