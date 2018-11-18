#!/bin/bash

echo "Automated script for downloading and preparing GO"
echo "Setup GO - Started"
sudo snap install --classic go
echo "GO Version:"
go version
echo "GO ENV:"
go env
echo "Setup GO - Finished"
echo " "

echo "Updating GCC - Started"
sudo apt-get update
sudo apt install gcc
echo "Updating GCC - Finished"
echo " "

echo "Clear GO cache - Started"
cd /home/ubuntu/.cache/
sudo rm -R go-build/
echo "Clear GO cache - Finished"
echo " "

echo "Set GOPATH - Started"
echo "export PATH=$PATH:/usr/local/go/bin" >> .profile
echo "export GOPATH=$HOME/go;" >> .profile
echo "export PATH=$PATH:$GOPATH/bin;" >> .profile
source .profile
echo "GOPATH: " $GOPATH
echo "PATH: " $PATH
echo "Set GOPATH - Finished"
echo " "

echo "This machines public IP-adress --> Alias: pubIP"
curl https://ipinfo.io/ip
echo "alias pubIP='curl https://ipinfo.io/ip'" >> ~/.bashrc
source ~/.bashrc
cd

echo "Enable Colorful Prompt"
sed -ie "s/#force_color_prompt/force_color_prompt/g" /home/ubuntu/.bashrc
echo ".bashrc color replaced"
source /home/ubuntu/.bashrc
cd 
source .bashrc
echo "Colorful Prompt Enabled"
