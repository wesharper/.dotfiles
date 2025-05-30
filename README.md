# Dotfiles

My personal `dotfiles` directory (MacOS/Bazzite Linux) designed to be used with
[GNU stow](https://www.gnu.org/software/stow/) to manage symlinks.

Includes a modularized, manually configured, simple `zsh` config _without_
`oh-my-zsh` as well as configurations for applications on both MacOS and Linux
(makes heavy assumptions about Bazzite/Fedora). Most application specific
configuration is found in the `.config` folder. `zsh` scripts try to be aware of
existing installations and current OS to provide some resilience across MacOS
and Linux.

## Initialization

- MacOS only - run `xcode-select --install`
- clone the repo somewhere using the `--recurse-submodules` option for zsh
  plugins (the `.stowrc` should allow this repo to live anywhere)
- run `sh init.sh` from the repo root - should only be necessary once
