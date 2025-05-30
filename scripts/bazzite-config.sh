echo "Installing zsh"
rpm-ostree install zsh

echo "Installing dotnet SDK (needed for git-credential-manager)"
rpm-ostree install dotnet-sdk-8.0

echo "Updating default shell to zsh"
sudo sed -i 's:/bin/bash:/bin/zsh:g' /etc/passwd

