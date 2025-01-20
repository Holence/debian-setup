#!/bin/bash
sudo apt install thunar gnome-keyring thunar-archive-plugin 

# for Android MTP transfer
sudo apt install gvfs-backends

mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml/
cp thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/

mkdir -p ~/.config/Thunar/
cp accels.scm ~/.config/Thunar/
cp uca.xml ~/.config/Thunar/
