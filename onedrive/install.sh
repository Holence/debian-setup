#!/bin/bash
echo "${COLOR_GREEN}install onedrive...${COLOR_END}"
sudo apt install onedrive

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
