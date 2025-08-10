#!/bin/bash
echo "${COLOR_GREEN}install StrongholdCursor...${COLOR_END}"
mkdir ~/.icons/
if [[ ! -f "StrongholdCursor.tar.xz" ]]; then
wget https://github.com/Holence/StrongholdCursor/releases/download/v1.0.0/StrongholdCursor.tar.xz
fi
tar xf ./StrongholdCursor.tar.xz --directory ~/.icons/

mkdir -p ~/.icons/default/
cp index.theme ~/.icons/default/

echo "${COLOR_GREEN}install Nordic-darker...${COLOR_END}"
mkdir ~/.themes/
if [[ ! -f "Nordic-darker.tar.xz" ]]; then
wget https://github.com/EliverLara/Nordic/releases/download/v2.2.0/Nordic-darker.tar.xz
fi
tar xf ./Nordic-darker.tar.xz --directory ~/.themes/

# you can use `lxappearance` to generate `~/.config/gtk-3.0/settings.ini`
mkdir -p ~/.config/gtk-3.0/
cp settings.ini ~/.config/gtk-3.0/

# root use the same
sudo mkdir /root/.config -p
sudo ln -sf ~/.config/gtk-3.0/ /root/.config/
sudo ln -sf ~/.themes/ /root/
sudo ln -sf ~/.icons/ /root/

# icon theme
echo "${COLOR_GREEN}install MoreWaita icon theme...${COLOR_END}"
if [[ ! -d "MoreWaita" ]]; then
git clone https://github.com/somepaulo/MoreWaita.git
fi
cd MoreWaita && bash install.sh
