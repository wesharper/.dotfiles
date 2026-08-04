#!/bin/bash

echo "Synching package databases"
shelly sync

echo "Installing standard packages"
shelly install --no-confirm standard \
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
  jack \
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
  reapack \
  ripgrep \
  shelly-flatpak-backend \
  signal-desktop \
  stow \
  sws \
  tealdeer \
  tmux \
  ttf-roboto-mono-nerd \
  wireguard-tools \
  wireshark-qt \
  yt-dlp \
  zsh-autosuggestions \
  zsh-syntax-highlighting

echo "Installing AUR packages"
# separate lines allow for manual check prompts
shelly install --no-confirm aur 1password
shelly install --no-confirm aur git-credential-manager-bin

echo "Installing flatpaks"
shelly install flatpak com.fastmail.Fastmail
shelly install flatpak com.plexamp.Plexamp
shelly install flatpak tv.plex.PlexDesktop

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing homebrew recommendations"
# reload to include homebrew in path
reload
brew install gcc
