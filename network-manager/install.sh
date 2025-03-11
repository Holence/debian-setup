#!/bin/bash
echo "${COLOR_GREEN}install network-manager...${COLOR_END}"
sudo apt install network-manager

# nmcli
# 如果nmcli里发现ethernet是unmanaged
# 可能是因为`/etc/NetworkManager/NetworkManager.conf`里设置了`[ifupdown] managed=false`
# 这会让NetworkManager不管理`/etc/network/interfaces`中列出的设备
# 设置成`[ifupdown] managed=true`就行了
# sudo systemctl restart NetworkManager

# TUI界面管理网络
# nmtui
