#!/bin/bash
echo "${COLOR_GREEN}install fsearch...${COLOR_END}"
sudo apt install fsearch

mkdir -p ~/.config/fsearch/
cp fsearch.conf ~/.config/fsearch/
