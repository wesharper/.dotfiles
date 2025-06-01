if type brew > /dev/null; then
   source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

export ZSH_AUTOSUGGEST_HISTORY_IGNORE="(git|cd) *"
export ZSH_AUTOSUGGEST_COMPLETION_IGNORE="(git|cd) *"

bindkey '^ ' autosuggest-accept
