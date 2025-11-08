# Dotfiles

My personal `dotfiles` directory (MacOS/Omarchy) designed to be used with
[GNU stow](https://www.gnu.org/software/stow/) to manage symlinks.

Includes a modularized, manually configured, simple `zsh` configuration _without_
`oh-my-zsh` as well as configurations for applications on both MacOS and Omarchy, with optional gaming configuration on Omarchy using CachyOS.

## Initialization

- MacOS only - run `xcode-select --install`
- clone the repo somewhere using the `--recurse-submodules` option for zsh
  plugins (the `.stowrc` should allow this repo to live anywhere, although there may be some assumptions about the repo living in `~/dev/.dotfiles`, which is where I keep my configuration)
- run `source setup.sh` from the repo root
