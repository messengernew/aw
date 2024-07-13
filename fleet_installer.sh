#!/bin/bash

sudo pacman -S --needed base-devel

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..

paru -S fleet --noconfirm --sudoloop -q

paru_location=$(which paru)
sudo rm -rf "$paru_location"

fleet_location=$(which fleet)
mv "$fleet_location" .

fleet_path=$(realpath fleet)

# Вывод пути к fleet
echo "Путь к fleet: $fleet_path"
