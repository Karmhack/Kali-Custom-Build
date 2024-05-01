#!/bin/sh

mkdir Iso_Builder
cd Iso_Builder
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y git live-build simple-cdd cdebootstrap curl
git lab https://gitlab.com/Karmhack/kali-custom-build.git
cd kali-custom-build/live-build-config
./build.sh --variant xfce --live -v
