#!/usr/bin/env zsh

# Add local user binaries to path
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:~/.local/bin

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

# Plugins
## Git submodules
if type fzf > /dev/null; then
  source $ZSH_PLUGINS/fzf-tab/fzf-tab.plugin.zsh # must occur first in plugins list and after compinit
fi
source $ZSH_PLUGINS/zsh-syntax-highlighting-catppuccin/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh # must occur before zsh-syntax-highlighting is loaded
source $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh # must occur before zsh-autosuggestions is loaded
source $ZSH_PLUGINS/zsh-autosuggestions-config/zsh-autosuggestions-config.plugin.zsh # must occur before zsh-autosuggestions is loaded
source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

## Custom/copied
source $ZSH_PLUGINS/asdf/asdf.plugin.zsh
source $ZSH_PLUGINS/blake-street/blake-street.plugin.zsh
source $ZSH_PLUGINS/fzf/fzf.plugin.zsh
source $ZSH_PLUGINS/nvm/nvm.plugin.zsh

# Load completions
fpath+=$ZSH_COMPLETIONS
autoload -Uz compinit
compinit

## Prompt
source $ZSH_PLUGINS/starship/starship.plugin.zsh
