#!/bin/bash
echo "${COLOR_GREEN} install fonts...${COLOR_END}"

# see https://wiki.debian.org/Fonts
mkdir -p /usr/local/share/fonts/
sudo cp ./fonts/*.* /usr/local/share/fonts/
fc-cache
