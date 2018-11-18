#!/bin/bash

echo "Automated script for downloading and preparing the Root Miner for Bazo-blockchain"
echo "  Downloading BAZO-Miner from Github"
go get github.com/bazo-blockchain/bazo-miner
cd /home/ubuntu/go/src/github.com/bazo-blockchain/bazo-miner
go build
echo "Download & build of BAZO-Miner - Finished"
echo " "

echo "This machines public IP-adress --> Alias: pubIP"
curl https://ipinfo.io/ip
echo "alias pubIP='curl https://ipinfo.io/ip'" >> ~/.bashrc
source ~/.bashrc
cd
source .bashrc
