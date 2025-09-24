if ! [ -s "/usr/local/bin/starship" ]
then
  curl -sS https://starship.rs/install.sh | sh
fi

# Check that the function `starship_zle-keymap-select()` is defined.
# xref: https://github.com/starship/starship/issues/3418
type starship_zle-keymap-select >/dev/null || \
  {
    eval "$(/usr/local/bin/starship init zsh)"
  }

eval "$(starship init zsh)"
