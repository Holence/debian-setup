#!/bin/bash
echo "${COLOR_GREEN}install xnview...${COLOR_END}"
if [[ ! -f "XnViewMP-linux-x64.deb" ]]; then
wget https://download.xnview.com/XnViewMP-linux-x64.deb
fi
sudo apt install ./XnViewMP-linux-x64.deb
