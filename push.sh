#!/bin/bash

git pull
#if [[ $(ls) == *"fonts"* ]]; then
    sudo cp  ~/.Xresources .Xresources
    sudo cp  ~/.vimrc .vimrc
    sudo cp  ~/.i3/config config
    sudo cp  ~/.xinitrc .xinitrc
    sudo cp  ~/.i3blocks.conf .i3blocks.conf
    sudo cp  /usr/local/libexec/i3blocks/* blocks/
    sudo cp  ~/.dunstrc .dunstrc
    sudo cp /etc/lightdm/lightdm-gtk-greeter.conf lightdm-gtk-greeter.conf
    sudo cp ~/.xprofile .xprofile
    echo "done"
#fi
