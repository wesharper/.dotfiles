if [[ $(uname) = "Darwin" ]]; then
  setopt append_history
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi


if [[ $(uname) = "Linux" ]]; then
  setopt append_history
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi


