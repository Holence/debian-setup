#!/bin/bash

sudo apt install fish

# set fish as default shell
chsh -s /usr/bin/fish

mkdir -p ~/.config/fish
cp ./config.fish ~/.config/fish/config.fish

sudo mkdir -p /root/.config/fish
sudo ln -sf ~/.config/fish/config.fish /root/.config/fish/config.fish
