#!/bin/bash

echo " "
echo "Script to add Accounts to the BAZO-Blockchain."
echo "Ensure a Miner is running and the clients cofnigurations.json is filled correctly."
echo "Ensure there is a folder called 'Wallets' and a root wallet called 'WalletB04Root.txt' included"
echo "--------------------------------------------------------------------------------------"
echo " "
echo "If Ready, enter 'y' else 'n'" 
read selection 
if [ "$selection" = "y" ]   
	then echo "Add Accounts to the running Blockchain."
	else exit 1
fi

cd ~/Bazo/src/github.com/oigele/bazo-client

mkdir Commitments

./bazo-client account create --rootwallet Wallets/WalletGCPCentral.txt --wallet Wallets/WalletGCPEast.txt
./bazo-client account create --rootwallet Wallets/WalletGCPCentral.txt --wallet Wallets/WalletGCPWest.txt
./bazo-client account create --rootwallet Wallets/WalletGCPCentral.txt --wallet Wallets/WalletGCPNortheast.txt
./bazo-client account create --rootwallet Wallets/WalletGCPCentral.txt --wallet Wallets/WalletGCPEuropenorth.txt


echo " "
echo "Added GCP accounts for:"
echo " - East"
echo " - West" 
echo " - Northeast"
echo " - Europenorth"
echo " "
echo "--------------------------------------------------------------------------------------"
echo "Check if all Accounts are added to the chain and are visible in the state."
echo "Insert 'y' if all worked, else 'n'"

read selection
if [ "$selection" = "y" ]
	then echo "Transferring 15'000 BAZO Coins to every new added account."
	else exit 1 
fi
echo " "
./bazo-client funds --from Wallets/WalletGCPCentral.txt --to Wallets/WalletGCPEast.txt --txcount 0 --amount 15000 --multisig Wallets/WalletGCPCentral.txt
./bazo-client funds --from Wallets/WalleGCPCentral.txt --to Wallets/WalletGCPWest.txt --txcount 1 --amount 15000 --multisig Wallets/WalletGCPCentral.txt
./bazo-client funds --from Wallets/WalletGCPCentral.txt --to Wallets/WalletGCPNortheast.txt --txcount 2 --amount 15000 --multisig Wallets/WalletGCPCentral.txt
./bazo-client funds --from Wallets/WalletGCPCentral.txt --to Wallets/WalletGCPEuropenorth.txt --txcount 3 --amount 15000 --multisig Wallets/WalletGCPCentral.txt

echo " "
echo "Sent coins to the previously created Accounts."
echo " "
echo "--------------------------------------------------------------------------------------" 
echo "Check if all Accounts have received the inserted starting funds. --> Then enable staking. " 
echo "Insert 'y' if all worked, else 'n'"  
read selection 
if [ "$selection" = "y" ]
	then echo "Enable staking for every new added account."
	else exit 1 
fi

./bazo-client staking enable --wallet Wallets/WalletGCPEast.txt --commitment Commitments/CommitmentGCPEast.txt
./bazo-client staking enable --wallet Wallets/WalletGCPWest.txt --commitment Commitments/CommitmentGCPWest.txt
./bazo-client staking enable --wallet Wallets/WalletGCPNortheast.txt --commitment Commitments/CommitmentGCPNortheast.txt
./bazo-client staking enable --wallet Wallets/WalletGCPEuropenorth.txt --commitment Commitments/CommitmentGCPEuropenorth.txt

echo " "
echo "Check if Staking is enabled for all accounts. If so, distribute the Wallets & Commitments to all miners & clients and start them."
cp -r Wallets ~/BAZO-Scripts-Fabio
cp -r Commitments ~/BAZO-Scripts-Fabio
