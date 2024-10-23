if ! [ -s "$HOME/.deno/env" ]
then
  curl -fsSL https://deno.land/install.sh | sh
fi

[ -s "$HOME/.deno/env" ] && \. "$HOME/.deno/env"
