#!/bin/bash

cd $HOME

sudo pacman -Syu
sudo pacman -S --noconfirm hyprland hyprpaper hyprlock hypridle hyprshot kitty waybar wofi pipewire playerctl gtk3 git pavucontrol rclone godot obsidian blender spotify-launcher

if ! command -v yay >/dev/null; then
    mkdir -p $HOME/tmp
    cd $HOME/tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd $HOME
fi

yay -S swaync nerd-fonts neofetch blueman zen-browser-bin

if ! command -v ollama >/dev/null; then
    cd $HOME
    curl -fsSL https://ollama.com/install.sh | sh
fi

ollama pull phi3:mini
rclone config