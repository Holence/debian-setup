#!/bin/bash
echo "${COLOR_GREEN}install ibus ibus-rime...${COLOR_END}"
sudo apt install ibus ibus-rime

mkdir -p ~/.config/ibus/rime

echo "${COLOR_MAGENTA}
# choose a rime config packs (such as rime-ice)
# extrace into ~/.config/ibus/rime/
> tar xf ./rime-ice.tar.gz --directory ~/.config/ibus/rime/
${COLOR_END}
"
