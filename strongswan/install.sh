#!/bin/bash
echo "${COLOR_GREEN}install strongswan...${COLOR_END}"

if [[ ! -f "NordVPN.pem" ]]; then
wget https://downloads.nordcdn.com/certificates/root.pem -O NordVPN.pem
fi

# debian 13
sudo apt install strongswan libcharon-extra-plugins libstrongswan-extra-plugins
sudo cp swanctl.conf /etc/swanctl/conf.d/
sudo cp ./constraints.conf /etc/strongswan.d/charon/constraints.conf
sudo cp ./bypass-lan.conf /etc/strongswan.d/charon/bypass-lan.conf
sudo cp NordVPN.pem /etc/swanctl/x509ca/
sudo swanctl --load-all

# debian 12
# sudo apt install strongswan libcharon-extra-plugins
# sudo cp ./ipsec.secrets /etc/ipsec.secrets
# sudo cp ./ipsec.conf /etc/ipsec.conf
# sudo cp ./constraints.conf /etc/strongswan.d/charon/constraints.conf
# sudo cp ./bypass-lan.conf /etc/strongswan.d/charon/bypass-lan.conf
# sudo cp NordVPN.pem /etc/ipsec.d/cacerts/
# sudo ipsec restart
