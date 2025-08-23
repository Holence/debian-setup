#!/bin/bash
echo "${COLOR_GREEN}install onedrive...${COLOR_END}"
wget -qO - https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/Debian_13/Release.key | gpg --dearmor | sudo tee /usr/share/keyrings/obs-onedrive.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/obs-onedrive.gpg] https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/Debian_13/ ./" | sudo tee /etc/apt/sources.list.d/onedrive.list
sudo apt-get update
sudo apt install --no-install-recommends --no-install-suggests onedrive

echo "${COLOR_MAGENTA}
# Login
> onedrive

# Choose folder to sync
> nano ~/.config/onedrive/sync_list
Data/
Text/
> onedrive --sync --resync
${COLOR_END}
"
