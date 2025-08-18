#!/bin/bash

cd $HOME

sudo pacman -Syu
sudo pacman -S kitty hyprland hyprpaper hyprlock hypridle hyprshot waybar wofi pipewire playerctl gtk3 git starship

if ! command -v yay >/dev/null; then
    mkdir -p $HOME/tmp
    cd $HOME/tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd $HOME
fi

yay -S swaync nerd-fonts neofetch zen-browser
