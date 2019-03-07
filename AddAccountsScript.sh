#!/bin/bash

echo "Script to add Accounts to the BAZO-Blockchain."
echo "Ensure a Miner is running and the clients cofnigurations.json is filled correctly."
echo "--------------------------------------------------------------------------------------"
echo "If Ready, enter 'y' else 'n'" 
read selection 
if [ "$selection" = "y" ]   
	then echo "GO!"
	else exit 1
fi

mkdir Wallets
mkdir COmmitments

./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPOregon.txt
./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPSouthCarolina.txt
./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPIowa.txt
./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPSaoPaulo.txt
./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPFrankfurt.txt
./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPFinland.txt
./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPNetherlands.txt
./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPSydney.txt
./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPHongKong.txt
./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPTokyo.txt
./bazo-client account create --rootwallet Wallets/WalletB04Root.txt --wallet Wallets/WalletGCPTaiwan.txt

echo "Added GCP accounts for:"
echo "- Oregon"
echo "- SoutCarolina" 
echo "- Iowa"
echo "- SaoPaulo"
echo "- Frankfurt"
echo "- Finland"
echo "- Netherlands"
echo "- Sydney"
echo "- HongKong"
echo "- Tokyo"
echo "- Taiwan"


