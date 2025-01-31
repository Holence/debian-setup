#!/bin/bash
cp ./bg.jpg ~/bg.jpg

sudo apt install curl wget git strace
sudo apt install make build-essential tldr
sudo apt install htop

# ibus-pinyin
# or ibus-libpinyin?
sudo apt install ibus ibus-pinyin

# exec install.sh in each subdirectory
# dont change order
bash -c "cd dwm; bash install.sh"
bash -c "cd dmenu; bash install.sh"
bash -c "cd slock; bash install.sh"
bash -c "cd thunar; bash install.sh"
bash -c "cd xfce4-terminal; bash install.sh"
bash -c "cd gtk; bash install.sh"
bash -c "cd fish; bash install.sh"
bash -c "cd fonts; bash install.sh"
bash -c "cd ipsec; bash install.sh"
bash -c "cd network-manager; bash install.sh"
bash -c "cd sublime; bash install.sh"
bash -c "cd vscode; bash install.sh"
bash -c "cd yandex; bash install.sh"

# bash -c "cd bcompare; bash install.sh"
# bash -c "cd bluetooth; bash install.sh"
# bash -c "cd evince; bash install.sh"
# bash -c "cd xnview; bash install.sh"
# bash -c "cd vlc; bash install.sh"

echo "Please Reboot!"
