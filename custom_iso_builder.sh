#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y git live-build simple-cdd cdebootstrap curl
git clone https://gitlab.com/Karmhack/kali-custom-build.git
cd kali-custom-build/kali-config/variant-xfce/hooks/live
sudo chmod +x AD_tools.chroot codium.chroot enum.chroot firefox_Addons.chroot postman.chroot
cd ../../../../
./build.sh --variant xfce --live -v
