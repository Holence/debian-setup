#!/bin/bash
echo "${COLOR_GREEN}install strongswan...${COLOR_END}"
sudo apt update && sudo apt upgrade
sudo apt install strongswan libcharon-extra-plugins
sudo cp ./ipsec.secrets /etc/ipsec.secrets
sudo cp ./ipsec.conf /etc/ipsec.conf
sudo cp ./constraints.conf /etc/strongswan.d/charon/constraints.conf
sudo cp ./bypass-lan.conf /etc/strongswan.d/charon/bypass-lan.conf
if [[ ! -f "NordVPN.pem" ]]; then
wget https://downloads.nordcdn.com/certificates/root.pem -O NordVPN.pem
fi
sudo cp NordVPN.pem /etc/ipsec.d/cacerts/NordVPN.pem
sudo ipsec restart
