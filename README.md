# Dotfiles

My personal `dotfiles` directory (MacOS/Linux) designed to be used with [GNU stow](https://www.gnu.org/software/stow/) to manage symlinks.

Includes a modularized, manually configured, simple `zsh` config _without_ `oh-my-zsh` as well as configurations for a handful of applications in the `.config` folder.

If for some odd reason you want to try out my config or, more likely, if I move on to some new fun thing for long enough to forget what the hell I did here, just clone the repo (I put mine in `$HOME`) and run `stow .`.

**Use caution, as you may accidentally overwrite files you don't want to lose.**

## Troubleshooting

- `no such file or directory: $HOME/.config/zsh/plugins/*`
  - I prefer to get plugins directly using git instead of `homebrew` or other package managers, so if this is your first use on a new machine or if a submodule has been added from a different machine, you will need to run `git submodule update --init --recursive` to grab code from relevant submodules. After that, it's good to periodically run `git submodule update --recursive --remote` just to keep everything up to date.
