#!/bin/bash
echo "deb https://repo.yandex.ru/yandex-browser/deb beta main" | sudo tee /etc/apt/sources.list.d/yandex.list
curl https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG --output YANDEX-BROWSER-KEY.GPG
sudo cp YANDEX-BROWSER-KEY.GPG /etc/apt/trusted.gpg.d/YANDEX-BROWSER-KEY.asc
sudo apt update
sudo apt install yandex-browser-beta
