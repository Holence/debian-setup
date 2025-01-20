#!/bin/bash

wget https://www.scootersoftware.com/DEB-GPG-KEY-scootersoftware.asc
sudo cp DEB-GPG-KEY-scootersoftware.asc /etc/apt/trusted.gpg.d/
wget https://www.scootersoftware.com/scootersoftware.list
sudo cp scootersoftware.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install bcompare
