#!/bin/bash
echo "${COLOR_GREEN}install ibus ibus-rime...${COLOR_END}"
sudo apt install ibus ibus-rime

make -p ~/.config/ibus/rime

# rime-ice
if [[ -f "rime-ice.tar.gz" ]]; then
tar xf ./rime-ice.tar.gz --directory ~/.config/ibus/rime/
fi
