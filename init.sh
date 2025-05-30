if [[ $(uname) = "Darwin" ]]; then
  echo "Configuring OS defaults"
  sh $(dirname $0)/scripts/darwin-config.sh

  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Configuring OS defaults"
  sh $(dirname $0)/scripts/bazzite-config.sh
fi

echo "Installing stow"
brew install stow

echo "Stowing dotfiles"
cd $(dirname $0) && stow .

echo "Installing software via global Brewfile"
brew bundle --global

echo "All done!"
