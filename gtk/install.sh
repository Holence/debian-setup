#!/bin/bash

mkdir ~/.icons/
if [[ ! -f "StrongholdCursor.tar.xz" ]]; then
wget https://github.com/Holence/StrongholdCursor/releases/download/v1.0.0/StrongholdCursor.tar.xz
fi
tar xf ./StrongholdCursor.tar.xz --directory ~/.icons/

mkdir -p ~/.icons/default
cp index.theme ~/.icons/default

mkdir ~/.themes/
if [[ ! -f "Nordic-darker.tar.xz" ]]; then
wget https://github.com/EliverLara/Nordic/releases/download/v2.2.0/Nordic-darker.tar.xz
fi
tar xf ./Nordic-darker.tar.xz --directory ~/.themes/

# use `lxappearance` to generate `~/.config/gtk-3.0/settings.ini`
mkdir -p ~/.config/gtk-3.0/
cp settings.ini ~/.config/gtk-3.0/
