#!/bin/bash

sudo apt install fish

# set fish as default shell
chsh -s /usr/bin/fish

cp ./config.fish ~/.config/fish/config.fish
sudo ln -sf ~/.config/fish/config.fish /root/.config/fish/config.fish
