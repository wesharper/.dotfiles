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

# Create workspace folder if not present
if [ ! -d "$WORKSPACE" ]; then
   mkdir -pv "$(dirname $WORKSPACE)"
fi

zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no

# Load completions
autoload -Uz compinit && compinit

# Plugins
## Git submodules
source $ZSH_PLUGINS/fzf-tab/fzf-tab.plugin.zsh # must occur first in plugins list and after compinit
source $ZSH_PLUGINS/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

## Custom/copied
source $ZSH_PLUGINS/nvm/nvm.plugin.zsh
source $ZSH_PLUGINS/supabase/supabase.plugin.zsh
source $ZSH_PLUGINS/asdf/asdf.plugin.zsh
source $ZSH_PLUGINS/blake-street/blake-street.plugin.zsh
source $ZSH_PLUGINS/deno/deno.plugin.zsh
source $ZSH_PLUGINS/brew/brew.plugin.zsh

## Prompt
source $ZSH_PLUGINS/starship/starship.plugin.zsh

## Theming for fast-syntax-highlighting
fast-theme -q XDG:catppuccin-mocha
