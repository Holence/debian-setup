#!/bin/bash
echo "${COLOR_GREEN}install fish...${COLOR_END}"
sudo apt install fish

# set fish as default shell
chsh -s /usr/bin/fish
sudo chsh -s /usr/bin/fish root

mkdir -p ~/.config/fish
cp ./config.fish ~/.config/fish/config.fish

mkdir -p ~/.config/fish/functions
cp ./ping_swanctl_conns.py ~/.config/fish/functions

sudo mkdir -p /root/.config/fish
sudo ln -sf ~/.config/fish/config.fish /root/.config/fish/config.fish
