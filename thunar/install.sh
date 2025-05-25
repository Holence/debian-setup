#!/bin/bash
echo "${COLOR_GREEN}install thunar...${COLOR_END}"
sudo apt install thunar

echo "${COLOR_GREEN}install gnome-keyring...${COLOR_END}"
sudo apt install gnome-keyring

echo "${COLOR_GREEN}replace xarchiver with file-roller...${COLOR_END}"
sudo apt remove xarchiver
sudo apt install file-roller

echo "${COLOR_GREEN}install thunar-archive-plugin...${COLOR_END}"
sudo apt install thunar-archive-plugin

# for Android MTP transfer
echo "${COLOR_GREEN}install gvfs-backends...${COLOR_END}"
sudo apt install gvfs-backends

mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml/
cp thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/

mkdir -p ~/.config/Thunar/
cp accels.scm ~/.config/Thunar/
cp uca.xml ~/.config/Thunar/
