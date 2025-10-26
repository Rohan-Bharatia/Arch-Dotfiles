#!/bin/bash

cd $HOME

sudo pacman -Syu
sudo pacman -S --noconfirm kitty hyprland hyprpaper hyprlock hypridle hyprshot waybar wofi pipewire playerctl gtk3 git pavucontrol

if ! command -v yay >/dev/null; then
    mkdir -p $HOME/tmp
    cd $HOME/tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd $HOME
fi

yay -S swaync nerd-fonts neofetch blueman zen-browser

if ! command -v ollama >/dev/null; then
    cd $HOME
    curl -fsSL https://ollama.com/install.sh | sh
fi

ollama pull phi3:mini
