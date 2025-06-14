#!/bin/bash
echo "${COLOR_GREEN}install yandex-browser...${COLOR_END}"
echo "deb https://repo.yandex.ru/yandex-browser/deb beta main" | sudo tee /etc/apt/sources.list.d/yandex-browser-beta.list
if [[ ! -f "YANDEX-BROWSER-KEY.GPG" ]]; then
curl https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG --output YANDEX-BROWSER-KEY.GPG
fi
sudo cp YANDEX-BROWSER-KEY.GPG /etc/apt/trusted.gpg.d/YANDEX-BROWSER-KEY.asc
sudo apt update
sudo apt install yandex-browser-beta
