#!/bin/bash
echo "${COLOR_GREEN}install bcompare...${COLOR_END}"

if [[ ! -f "DEB-GPG-KEY-scootersoftware.asc" ]]; then
wget https://www.scootersoftware.com/DEB-GPG-KEY-scootersoftware.asc
fi
sudo cp DEB-GPG-KEY-scootersoftware.asc /etc/apt/trusted.gpg.d/

if [[ ! -f "scootersoftware.list" ]]; then
wget https://www.scootersoftware.com/scootersoftware.list
fi
sudo cp scootersoftware.list /etc/apt/sources.list.d/

sudo apt update
sudo apt install bcompare
