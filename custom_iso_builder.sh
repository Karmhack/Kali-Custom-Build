#!/bin/sh

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y git live-build simple-cdd cdebootstrap curl
git clone https://gitlab.com/Karmhack/kali-custom-build.git
cd kali-custom-build
./build.sh --variant xfce --live -v
