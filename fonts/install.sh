#!/bin/bash

# see https://wiki.debian.org/Fonts
sudo cp ./fonts/*.* /usr/local/share/fonts/
fc-cache
