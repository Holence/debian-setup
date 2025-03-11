#!/bin/bash
echo "${COLOR_GREEN}install xfce4-terminal...${COLOR_END}"
sudo apt install xfce4-terminal

mkdir -p ~/.config/xfce4/terminal/
cp terminalrc ~/.config/xfce4/terminal/terminalrc
