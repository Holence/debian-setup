#!/bin/bash

# see https://wiki.debian.org/Fonts
sudo cp ./*.ttf /usr/local/share/fonts/
fc-cache
