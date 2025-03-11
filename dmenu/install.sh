#!/bin/bash
echo "${COLOR_GREEN}install dmenu...${COLOR_END}"
git clone https://git.suckless.org/dmenu
cd dmenu && sudo make && sudo make install
