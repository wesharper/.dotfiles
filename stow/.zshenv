export TERM="xterm-256color"
export EDITOR="code"

# Config directories
export DOTFILES="$HOME/.dotfiles"
export WORKSPACE="$HOME/dev"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_PLUGINS="$ZDOTDIR/plugins"
export ZSH_COMPLETIONS="$ZDOTDIR/completions"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# History
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=5000
export SAVEHIST=$HISTSIZE
export HISTDUP=erase
