if ! [ -s "/usr/local/bin/starship" ]
then
  curl -sS https://starship.rs/install.sh | sh
fi

eval "$(starship init zsh)"
