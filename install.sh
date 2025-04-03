#!/bin/bash

export COLOR_RED=$(tput setaf 1)
export COLOR_GREEN=$(tput setaf 2)
export COLOR_YELLOW=$(tput setaf 3)
export COLOR_BLUE=$(tput setaf 4)
export COLOR_MAGENTA=$(tput setaf 5)
export COLOR_CYAN=$(tput setaf 6)
export COLOR_WHITE=$(tput setaf 7)
export COLOR_END=$(tput sgr0)

# usage: bash install.sh folder_name
if [[ $1 ]]; then
    bash -c "cd $1; bash install.sh"
    exit
fi

# usage: bash install.sh
cp ./bg.jpg ~/bg.jpg
echo "${COLOR_GREEN}update apt...${COLOR_END}"
sudo cp sources.list /etc/apt/sources.list
sudo apt update
sudo apt upgrade

echo "${COLOR_GREEN}install curl wget git strace...${COLOR_END}"
sudo apt install curl wget git strace
echo "${COLOR_GREEN}install make build-essential tldr...${COLOR_END}"
sudo apt install make build-essential tldr
echo "${COLOR_GREEN}install htop...${COLOR_END}"
sudo apt install htop
echo "${COLOR_GREEN}install ibus ibus-libpinyin...${COLOR_END}"
sudo apt install ibus ibus-libpinyin

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
bash -c "cd fsearch; bash install.sh"
bash -c "cd strongswan; bash install.sh"
bash -c "cd network-manager; bash install.sh"
bash -c "cd sublime; bash install.sh"
bash -c "cd vscode; bash install.sh"
bash -c "cd yandex; bash install.sh"

# bash -c "cd bcompare; bash install.sh"
# bash -c "cd bluetooth; bash install.sh"
# bash -c "cd k380; bash install.sh"
# bash -c "cd xnview; bash install.sh"
# bash -c "cd smplayer; bash install.sh"

# sudo apt install evince

echo "Please Reboot!"
