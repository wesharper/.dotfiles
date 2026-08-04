#!/bin/bash

echo "Installing standard packages"
shelly install standard \
  brave-origin-bin \
  discord \
  docker \
  docker-buildx \
  docker-compose \
  eza \
  fd \
  ffmpeg \
  fuse2 \
  fzf \
  ghostscript \
  ghostty \
  ghostty-shell-integration \
  ghostty-nautilus \
  ghostty-terminfo \
  imagemagick \
  lazygit \
  lazydocker \
  libreoffice-fresh \
  localsend \
  luarocks \
  mermaid-cli \
  mise \
  neovim \
  obsidian \
  opencode \
  pass \
  pinta \
  readest \
  ripgrep \
  signal-desktop \
  stow \
  tmux \
  ttf-roboto-mono-nerd \
  wireguard-tools \
  yt-dlp \
  zsh-autosuggestions \
  zsh-syntax-highlighting

echo "Installing AUR packages"
shelly install aur \
  1password \
  1password-cli \
  fastmail \
  git-credential-manager \
  lazysql \
  linear-bin \
  plex-desktop \
  plexamp-bin

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing homebrew recommendations"
# reload to include homebrew in path
reload
brew install gcc
