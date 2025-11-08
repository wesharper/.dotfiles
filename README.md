# Dotfiles

My personal `dotfiles` directory (MacOS/Omarchy) designed to be used with
[GNU stow](https://www.gnu.org/software/stow/) to manage symlinks.

Includes a modularized, manually configured, simple `zsh` configuration
_without_ `oh-my-zsh` as well as configurations for applications on both MacOS
and Omarchy, with optional gaming configuration on Omarchy using CachyOS.

## Usage

Run
`curl https://raw.githubusercontent.com/wesharper/.dotfiles/refs/heads/main/setup.sh | bash`

For optional gaming configuration in Omarchy, run
`cd ~/dev/.dotfiles && source ./scripts/omarchy/gaming/main.sh` after the
initial setup script is successful.
