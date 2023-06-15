#!/bin/bash

cd /tmp

sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
#sudo apt install fish -y
sudo apt install wget curl -y
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
sudo apt-get install virtualbox -y
sudo apt-get install krusader -y
sudo apt-get install virtualbox—ext–pack -y
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update -y
sudo apt-get install google-chrome-stable -y

#from https://gist.github.com/javiersantos/e819fb4fe8545af30839
curl --silent "https://api.github.com/repos/telegramdesktop/tdesktop/releases" | jq -r | grep tsetup | head | grep "tsetup.*xz" | cut -d : -f 2,3 | tr -d \" | wget -O tsetup.tar.xz -i  -
wget -O - https://raw.githubusercontent.com/telegramdesktop/tdesktop/master/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_256x256@2x.png > icon.png
sudo mkdir /usr/share/telegram
sudo chmod +x /usr/share/telegram
sudo tar -xvJf ./tsetup.tar.xz
cd ./Telegram
sudo cp ./Updater /usr/share/telegram/Updater
sudo cp ./Telegram /usr/share/telegram/Telegram
cd /tmp
sudo echo "[Desktop Entry]" > telegram.desktop
sudo echo "Name=Telegram" >> telegram.desktop
sudo echo "GenericName=Chat" >> telegram.desktop
sudo echo "Comment=Chat with yours friends" >> telegram.desktop
sudo echo "Exec=/usr/share/telegram/Telegram" >> telegram.desktop
sudo echo "Terminal=false" >> telegram.desktop
sudo echo "Type=Application" >> telegram.desktop
sudo echo "Icon=/usr/share/telegram/icon.png" >> telegram.desktop
sudo echo "Categories=Network;Chat;" >> telegram.desktop
sudo echo "StartupNotify=false" >> telegram.desktop
sudo cp icon.png /usr/share/telegram/icon.png
sudo cp telegram.desktop /usr/share/applications/telegram.desktop
rm /tmp/tsetup.tar.xz
rm /tmp/icon.png
rm /tmp/telegram.desktop
rm -R /tmp/Telegram



cd /tmp
git clone https://github.com/mriza/winbox-installer.git
cd winbox-installer
sudo ./winbox-setup install




curl --silent "https://api.github.com/repos/SagerNet/sing-box/releases" | jq -r | grep _linux_amd64 | head | grep ".*_linux_amd64.deb" | cut -d : -f 2,3 | tr -d \" | wget -O sing-box_linux_amd64.deb -i  -
sudo dpkg -i sing-box_linux_amd64.deb

curl --silent "https://api.github.com/repos/VSCodium/vscodium/releases" | jq -r | grep ".*amd64.deb" | head | grep ".*amd64.deb" | cut -d : -f 2,3 | tr -d \" | wget -O VSCodium.deb -i  -
sudo dpkg -i VSCodium.deb

pip3 install howdoi requests tinydb flask kaggle
pip3 install bpytop jupyter notebook
sudo apt install jupyter-notebook -y
sudo apt install jupyter-core -y
