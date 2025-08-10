#!/bin/bash
echo "${COLOR_GREEN}install wget gpg gnome-keyring...${COLOR_END}"
sudo apt-get install wget gpg gnome-keyring
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
rm -f packages.microsoft.gpg
printf "Types: deb\nURIs: https://packages.microsoft.com/repos/code\nSuites: stable\nComponents: main\nArchitectures: amd64,arm64,armhf\nSigned-By: /usr/share/keyrings/microsoft.gpg" | sudo tee /etc/apt/sources.list.d/vscode.sources

sudo apt update
echo "${COLOR_GREEN}install vscode...${COLOR_END}"
sudo apt install code

echo 'Remember to Preferences: Configure Runtime Arguments'
echo 'and add "password-store":"gnome-libsecret"'
