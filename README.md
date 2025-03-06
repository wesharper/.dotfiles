# Dotfiles

My personal `dotfiles` directory (MacOS/Linux) designed to be used with [GNU stow](https://www.gnu.org/software/stow/) to manage symlinks.

Includes a modularized, manually configured, simple `zsh` config _without_ `oh-my-zsh` as well as configurations for applications on both MacOS and Linux. Most application specific configuration is found in the `.config` folder. `zsh` scripts try to be aware of existing installations and current OS to provide some resilience across MacOS and Linux.

While I like NixOS for my Linux devices (like my PC gaming rig), I've opted to use `homebrew` and a declarative `Brewfile` to manage my installed applications across my MacOS machines. I played around with `nix-darwin` and `home-manager` but didn't like the extra layer of abstraction that `home-manager` seems to entail. I've found that basically all of my app or shell-specific configurations work cross-platform in their current state using stow out of the box and can use each platform's respective declarative config file (i.e. `configuration.nix` or `Brewfile`) for application management.

For me, it's a good balance of cross-platform reusability of my dotfiles without deviating too far from the broadly used patterns of the respective OS communities and without losing the benefits of declarative application management. For tools that are not cross-platform, like `Aerospace` or `i3wm`, the configuration files can live in the `~/.config` folder without causing any issues because they will never be read by uninstalled software. So far, I've found that platform-specific config is pretty rare, and typically only necessary in scripts for my `zsh` setup.

If for some odd reason you want to try out my config or, more likely, if I haven't done this in a while, use the following steps:

- Mac (first time only)

  - run `xcode-select --install`
  - clone the repo somewhere using the `--recurse-submodules` option for zsh plugins (the `.stowrc` should allow this repo to live anywhere)
  - run `sh darwin-init.sh` from the repo root

- NixOS

  - Ensure `stow` is in the system's application list
  - Run `stow .` from the repo root
