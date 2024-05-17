echo "Installing Homebrew"
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed, skipping installation"
fi

echo "Installing fzf"
if ! command -v fzf &> /dev/null
then
  brew install fzf
else
  echo "fzf already installed, skipping installation"
fi

echo "Installing zoxide"
if ! command -v zoxide &> /dev/null
then
  brew install zoxide
else
  echo "zoxide already installed, skipping installation"
fi

brew install stow
stow --adopt .

echo "Installing RobotoMono Nerd Font"
if [ ! -f ~/Library/Fonts/RobotoMonoNerdFont-Bold.ttf ]; then
  brew install --cask font-roboto-mono-nerd-font
else
  echo "RobotoMono Nerd Font already installed, skipping installation"
fi

echo "Installing iTerm"
if [ ! -d "/Applications/iTerm.app" ]; then
  brew install --cask iterm2
else
  echo "iTerm already installed, skipping installation"
fi
# Set and use custom iTerm preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.iterm"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

echo "Installing Brave Browser"
if [ ! -d "/Applications/Brave Browser.app" ]; then
  brew install --cask brave-browser
else
  echo "Brave Browser already installed, skipping installation"
fi

echo "Installing GitButler"
if [ ! -d "/Applications/GitButler.app" ]; then
  brew install --cask gitbutler
else
  echo "GitButler already installed, skipping installation"
fi

echo "Installing Linear"
if [ ! -d "/Applications/Linear.app" ]; then
  brew install --cask linear-linear
else
  echo "Linear already installed, skipping installation"
fi

echo "Installing Slack"
if [ ! -d "/Applications/Slack.app" ]; then
  brew install --cask slack
else
  echo "Slack already installed, skipping installation"
fi

echo "Installing Discord"
if [ ! -d "/Applications/Discord.app" ]; then
  brew install --cask discord
else
  echo "Discord already installed, skipping installation"
fi

echo "Installing 1Password"
if [ ! -d "/Applications/1Password.app" ]; then
  brew install --cask 1password
else
  echo "1Password already installed, skipping installation"
fi

echo "Installing Docker"
if [ ! -d "/Applications/Docker.app" ]; then
  brew install --cask docker
else
  echo "Docker already installed, skipping installation"
fi

echo "Installing Spotify"
if [ ! -d "/Applications/Spotify.app" ]; then
  brew install --cask spotify
else
  echo "Spotify already installed, skipping installation"
fi

echo "Installing Rectangle Pro"
if [ ! -d "/Applications/Rectangle Pro.app" ]; then
  brew install --cask rectangle-pro
else
  echo "Rectangle Pro already installed, skipping installation"
fi

echo "Installing Nord VPN"
if [ ! -d "/Applications/NordVPN.app" ]; then
  brew install --cask nordvpn
else
  echo "Nord VPN already installed, skipping installation"
fi

# Dock settings
# Remove all persistent apps
defaults delete com.apple.dock persistent-apps
# Set persistent others
defaults delete com.apple.dock persistent-others
downloads_folder="<dict><key>tile-data</key><dict><key>arrangement</key><integer>2</integer><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>file://$HOME/Downloads/</string><key>_CFURLStringType</key><integer>15</integer></dict><key>file-label</key><string>Downloads</string><key>file-type</key><integer>2</integer><key>preferreditemsize</key><integer>-1</integer><key>showas</key><integer>3</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"
defaults write com.apple.dock persistent-others -array-add $downloads_folder

# Set additional config
defaults write com.apple.dock show-recents -int 0;
defaults write com.apple.dock tilesize -int 45;
defaults write com.apple.dock autohide -int 1;

# Reset to show changes
killall Dock
