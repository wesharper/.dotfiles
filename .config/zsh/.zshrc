#!/usr/bin/env zsh

# Configure aliases
[ -f "${ZDOTDIR}/.aliases" ] && . "${ZDOTDIR}/.aliases"
[ -f "${ZDOTDIR}/.aliases.local" ] && . "${ZDOTDIR}/.aliases.local"

# Set options
setopt append_history
setopt share_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Set the homebrew shell environment if installed
if [[ -f "/opt/homebrew/bin/brew" ]] then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Create workspace folder if not present
if [ ! -d "$WORKSPACE" ]; then
   mkdir -pv "$(dirname $WORKSPACE)"
fi

zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no

# Load completions from brew
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

# Load completions
autoload -Uz compinit && compinit

# Git module plugins
source $ZSH_PLUGINS/fzf-tab/fzf-tab.plugin.zsh # must occur first in plugins list and after compinit
source $ZSH_PLUGINS/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# Hand-built or generated plugins
source $ZSH_PLUGINS/nvm/nvm.plugin.zsh
source $ZSH_PLUGINS/supabase/supabase.plugin.zsh

# Prompt
fpath+=($ZSH_PLUGINS/pure)
autoload -U promptinit; promptinit
prompt pure
