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

mkdir Commitments

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

echo " "
echo "Added GCP accounts for:"
echo " - Oregon"
echo " - SoutCarolina" 
echo " - Iowa"
echo " - SaoPaulo"
echo " - Frankfurt"
echo " - Finland"
echo " - Netherlands"
echo " - Sydney"
echo " - HongKong"
echo " - Tokyo"
echo " - Taiwan"
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
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPOregon.txt --txcount 0 --amount 15000 --multisig Wallets/WalletB04Root.txt
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPSouthCarolina.txt --txcount 1 --amount 15000 --multisig Wallets/WalletB04Root.txt
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPIowa.txt --txcount 2 --amount 15000 --multisig Wallets/WalletB04Root.txt
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPSaoPaulo.txt --txcount 3 --amount 15000 --multisig Wallets/WalletB04Root.txt
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPFrankfurt.txt --txcount 4 --amount 15000 --multisig Wallets/WalletB04Root.txt
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPFinland.txt --txcount 5 --amount 15000 --multisig Wallets/WalletB04Root.txt
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPNetherlands.txt --txcount 6 --amount 15000 --multisig Wallets/WalletB04Root.txt
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPSydney.txt --txcount 7 --amount 15000 --multisig Wallets/WalletB04Root.txt
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPHongKong.txt --txcount 8 --amount 15000 --multisig Wallets/WalletB04Root.txt
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPTokyo.txt --txcount 9 --amount 15000 --multisig Wallets/WalletB04Root.txt
./bazo-client funds --from Wallets/WalletB04Root.txt --to Wallets/WalletGCPTaiwan.txt --txcount 10 --amount 15000 --multisig Wallets/WalletB04Root.txt
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

./bazo-client staking enable --wallet Wallets/WalletGCPOregon.txt --commitment Commitments/CommitmentGCPOregon.txt
./bazo-client staking enable --wallet Wallets/WalletGCPSouthCarolina.txt --commitment Commitments/CommitmentGCPSouthCarolina.txt
./bazo-client staking enable --wallet Wallets/WalletGCPIowa.txt --commitment Commitments/CommitmentGCPIowa.txt
./bazo-client staking enable --wallet Wallets/WalletGCPSaoPaulo.txt --commitment Commitments/CommitmentGCPSaoPaulo.txt
./bazo-client staking enable --wallet Wallets/WalletGCPFrankfurt.txt --commitment Commitments/CommitmentGCPFrankfurt.txt
./bazo-client staking enable --wallet Wallets/WalletGCPFinland.txt --commitment Commitments/CommitmentGCPFinland.txt
./bazo-client staking enable --wallet Wallets/WalletGCPNetherlands.txt --commitment Commitments/CommitmentGCPNetherlands.txt
./bazo-client staking enable --wallet Wallets/WalletGCPSydney.txt --commitment Commitments/CommitmentGCPSydney.txt
./bazo-client staking enable --wallet Wallets/WalletGCPHongKong.txt --commitment Commitments/CommitmentGCPHongKong.txt
./bazo-client staking enable --wallet Wallets/WalletGCPTokyo.txt --commitment Commitments/CommitmentGCPTokyo.txt
./bazo-client staking enable --wallet Wallets/WalletGCPTaiwan.txt --commitment Commitments/CommitmentGCPTaiwan.txt


echo "Check if Staking is enabled for all accounts. If so, distribute the Wallets & Commitments to all miners & clients and start them."
cp -r Wallets ~/BAZO-Scripts-Fabio
cp -r Commitments ~/BAZO-Scripts-Fabio
