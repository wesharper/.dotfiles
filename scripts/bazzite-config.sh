echo "Installing zsh"
rpm-ostree install zsh

echo "Updating default shell to zsh"
sudo sed -i 's:/bin/bash:/bin/zsh:g' /etc/passwd

echo "Installing dotnet SDK (needed for git-credential-manager)"
rpm-ostree install dotnet-sdk-8.0

echo "Setting up GPG credential store (needed for git-credential-manager)"
gpg --gen-key -u "13283469+wesharper@users.noreply.github.com"
pass init "13283469+wesharper@users.noreply.github.com"
