#!/bin/bash
echo "${COLOR_GREEN}install smplayer...${COLOR_END}"
sudo apt install smplayer smplayer-themes

mkdir -p ~/.config/smplayer/
cp smplayer.ini ~/.config/smplayer/
