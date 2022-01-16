#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
#sudo apt install fish -y
sudo apt install vlc -y
sudo apt install git -y
sudo apt install python3-pip -y
sudo apt install tmux -y
sudo apt install qbittorrent -y
sudo apt install pv -y
sudo apt install locate -y
sudo apt install vim -y
sudo apt install net-tools -y
sudo apt install whois -y
sudo apt install traceroute -y
sudo apt install bat -y
sudo apt install stacer -y
sudo apt install iftop -y
sudo apt install p7zip-full -y
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update -y
sudo apt-get install google-chrome-stable -y
sudo apt install apt-transport-https -y
sudo wget -O - https://repo.jellyfin.org/jellyfin_team.gpg.key | sudo apt-key add -
sudo echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/$( awk -F'=' '/^ID=/{ print $NF }' /etc/os-release ) $( awk -F'=' '/^VERSION_CODENAME=/{ print $NF }' /etc/os-release ) main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
sudo apt update -y
sudo apt install jellyfin -y





pip3 install howdoi requests tinydb flask
pip3 install bpytop
