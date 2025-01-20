#!/bin/bash
cp ./bg.jpg ~/bg.jpg

sudo apt install curl wget git
sudo apt install make build-essential

# pinyin
sudo apt install ibus ibus-pinyin

# exec install.sh in each subdirectory
find . -mindepth 2 -maxdepth 2 -type f -name "install.sh" -execdir bash install.sh \;

echo "Please Reboot!"
