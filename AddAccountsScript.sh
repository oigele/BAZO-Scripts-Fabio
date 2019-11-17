#!/bin/bash

echo " "
echo "Script to add Accounts to the BAZO-Blockchain."
echo "Ensure a Miner is running and the clients cofnigurations.json is filled correctly."
echo "Ensure there is a folder called 'Wallets' and a root wallet called 'WalletGCPCentral.txt' included"
echo "--------------------------------------------------------------------------------------"
echo " "
echo "If Ready, enter 'y' else 'n'" 
read selection 
if [ "$selection" = "y" ]   
	then echo "Add Accounts to the running Blockchain."
	else exit 1
fi

cd ~/Bazo/src/github.com/oigele/bazo-client


./bazo-client account create --rootwallet WalletGCPCentral.txt --wallet WalletGCPEast.txt
./bazo-client account create --rootwallet WalletGCPCentral.txt --wallet WalletGCPWest.txt
./bazo-client account create --rootwallet WalletGCPCentral.txt --wallet WalletGCPNortheast.txt
./bazo-client account create --rootwallet WalletGCPCentral.txt --wallet WalletGCPEuropenorth.txt


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
./bazo-client funds --from WalletGCPCentral.txt --to WalletGCPEast.txt --txcount 0 --amount 15000 --multisig WalletGCPCentral.txt
./bazo-client funds --from WalletGCPCentral.txt --to WalletGCPWest.txt --txcount 1 --amount 15000 --multisig WalletGCPCentral.txt
./bazo-client funds --from WalletGCPCentral.txt --to WalletGCPNortheast.txt --txcount 2 --amount 15000 --multisig WalletGCPCentral.txt
./bazo-client funds --from WalletGCPCentral.txt --to WalletGCPEuropenorth.txt --txcount 3 --amount 15000 --multisig WalletGCPCentral.txt

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

./bazo-client staking enable --wallet WalletGCPEast.txt --commitment CommitmentGCPEast.txt
./bazo-client staking enable --wallet WalletGCPWest.txt --commitment CommitmentGCPWest.txt
./bazo-client staking enable --wallet WalletGCPNortheast.txt --commitment CommitmentGCPNortheast.txt
./bazo-client staking enable --wallet WalletGCPEuropenorth.txt --commitment CommitmentGCPEuropenorth.txt

echo " "
echo "Check if Staking is enabled for all accounts. If so, distribute the Wallets & Commitments to all miners & clients and start them."
cp -r Wallet* ~/BAZO-Scripts-Fabio/Wallets
cp -r Commitment* ~/BAZO-Scripts-Fabio/Commitments
