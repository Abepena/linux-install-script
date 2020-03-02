#!/bin/sh


# 1 Add key for google-chrome reop
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# 2 Set chrome repo
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

# 3 install packages
sudo apt-get update
sudo apt-get install google-chrome-stable nodejs npm python3-pip snapd -y
sudo snap install spotify
sudo apt install git
sudo dpkg -i ./packages/vscode.deb

