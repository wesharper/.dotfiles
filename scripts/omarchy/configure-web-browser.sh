#!/bin/bash

echo "Installing Brave"
yay -S --noconfirm --needed brave-bin

echo "Setting Brave as default browser"
if [[ -f /usr/share/applications/brave-browser.desktop ]]; then
  xdg-settings set default-web-browser brave-browser.desktop
else
  echo "Could not configure Brave as default browser, please check installation"
fi
