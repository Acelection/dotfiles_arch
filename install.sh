#!/bin/bash

dir=$(pwd)

#start by installing xorg and i3-gaps manually

sudo pacman -S unzip numix-gtk-theme bc xclip python python2 python2-pip python-pip mlocate lightdm networkmanager openssh zsh vim lxappearance compton rofi rxvt-unicode mlocate dunst feh lightdm-gtk-greeter accountsservice

sudo systemctl enable lightdm

#mkdir /tmp/install && cd /tmp/install

#if [[ $1 != "nocompile" ]];
#then
##Vundle
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#fi

mkdir ~/.colors/
mkdir -p ~/.vim/colors/
mkdir ~/.fonts/
mkdir ~/.i3/
mkdir -p /usr/local/libexec/i3blocks
mkdir ~/Pictures

cd $dir
sudo cp fonts/*.ttf ~/.fonts/
sudo cp .Xresources ~/.Xresources
sudo cp .vimrc ~/.vimrc
sudo cp config ~/.i3/config
sudo cp gruvbox ~/.colors/gruvbox
sudo cp gruvbox.vim ~/.vim/colors/gruvbox.vim
sudo cp .xinitrc ~/.xinitrc
sudo cp .i3blocks.conf ~/.i3blocks.conf
sudo cp blocks/* /usr/local/libexec/i3blocks/
sudo cp .dunstrc ~/.dunstrc
sudo cp lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
sudo cp .xprofile ~/.xprofile
sudo cp wallpaper.jpg ~/Pictures
sudo cp login.jpg /etc/lightdm/
sudo cp david-user /var/lib/AccountsService/users/david
sudo cp david-icon /var/lib/Accountsservice/icons/david

rm -rf /tmp/install/
