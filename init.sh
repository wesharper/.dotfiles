if [[ $(uname) = "Darwin" ]]; then
  echo "Configuring OS defaults"
  sh $(dirname $0)/scripts/darwin-config.sh

  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [[ $(uname) = "Linux" ]]; then
  echo "Configuring OS defaults"
  sh $(dirname $0)/scripts/bazzite-config.sh
fi

echo "Installing stow"
brew install stow

echo "Stowing dotfiles"
cd $(dirname $0) && stow .

echo "Installing software via global Brewfile"
brew bundle --global

if [[ $(uname) = "Linux" ]]; then
  echo "Installing git-credential-manager (Linux)"
  dotnet tool install -g git-credential-manager
fi

echo "All done!"
