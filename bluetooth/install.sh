#!/bin/bash
echo "${COLOR_GREEN}install bluetooth...${COLOR_END}"
sudo apt install bluez

sudo apt install rfkill
sudo rfkill unblock all

echo "${COLOR_MAGENTA}
> bluetoothctl
> scan on
> devices
> pair ##:##:##:##:##:##
> connect ##:##:##:##:##:##
> trust ##:##:##:##:##:##
${COLOR_END}
"