#!/bin/zsh

HERE=$(cd $(dirname $0); pwd)
CONFIG_DIRPATH=$HOME/.config/xremap

yay -S --noconfirm --needed xremap-wlroots-bin python-uinput

sudo pacman -S --noconfirm --needed $(cat packages.txt)

echo "uinput" | sudo tee -a /etc/modules-load.d/uinput.conf
echo 'KERNEL=="uinput", GROUP="input", TAG+="uaccess"' | sudo tee /etc/udev/rules.d/99-input.rules

ln -sf $HERE $CONFIG_DIRPATH

echo "Reboot Required!!"
