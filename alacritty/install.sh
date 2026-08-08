#!/bin/bash
echo "${COLOR_GREEN}install alacritty...${COLOR_END}"
sudo apt install alacritty

mkdir -p ~/.config/alacritty/
cp alacritty.toml ~/.config/alacritty/alacritty.toml
mkdir -p ~/.config/alacritty/
cp -r themes/ ~/.config/alacritty/
