#!/bin/bash

# see https://wiki.debian.org/Fonts
sudo cp ./*.tff /usr/local/share/fonts/
fc-cache
