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
  flatpak \
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
  reaper \
  ripgrep \
  shelly-flatpak-backend \
  signal-desktop \
  stow \
  tealdeer \
  tmux \
  ttf-roboto-mono-nerd \
  wireguard-tools \
  yt-dlp \
  zsh-autosuggestions \
  zsh-syntax-highlighting

echo "Installing AUR packages"
shelly install aur \
  1password \
  git-credential-manager \
  lazysql

echo "Installing flatpaks"
shelly install flatpak \
  com.fastmail.Fastmail \
  com.plexamp.Plexamp \
  tv.plex.PlexDesktop \
  org.wireshark.Wireshark

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing homebrew recommendations"
# reload to include homebrew in path
reload
brew install gcc
