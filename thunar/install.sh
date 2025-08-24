#!/bin/bash
echo "${COLOR_GREEN}install thunar...${COLOR_END}"
sudo apt install thunar

echo "${COLOR_GREEN}install gnome-keyring...${COLOR_END}"
sudo apt install gnome-keyring

echo "${COLOR_GREEN}replace xarchiver with engrampa...${COLOR_END}"
sudo apt remove xarchiver
sudo apt install engrampa

echo "${COLOR_GREEN}install thunar-archive-plugin...${COLOR_END}"
sudo apt install thunar-archive-plugin

# for Android MTP transfer
echo "${COLOR_GREEN}install gvfs-backends...${COLOR_END}"
sudo apt install gvfs-backends

# for convert image
echo "${COLOR_GREEN}install imagemagick...${COLOR_END}"
sudo apt install imagemagick

# Thunar relies on a Polkit authentication agent (e.g., xfce-polkit, lxpolkit, policykit-1-gnome)
# to handle privilege escalation and prompt for a password when a privileged action, such as mount
echo "${COLOR_GREEN}install lxpolkit...${COLOR_END}"
sudo apt install lxpolkit

mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml/
cp thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/

mkdir -p ~/.config/Thunar/
cp accels.scm ~/.config/Thunar/
cp uca.xml ~/.config/Thunar/
