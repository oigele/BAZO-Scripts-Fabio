#!/bin/bash

echo " "
echo "The following script is written to help you setting up a Bazo Miner & Client when the new account already exists."
echo "Plese insert the name of the Location where you set up this VM:"
read location
echo "We are now setting up a VM in Location $location running on GCP"

cd ~/go/src/github.com/bazo-blockchain/bazo-client
pbIP=$(curl https://ipinfo.io/ip)
echo " "
echo "This machines public IP:"
echo $pbIP
echo "enter bootstrap IP: [number]"
read btIP
jq '.this_client.ip="'$pbIP'"' configuration.json > temp.json
rm configuration.json
jq '.bootstrap_server.ip="'$pbIP'"' temp.json > temp2.json
jq '.bootstrap_server.port="'8001'"' temp2.json > temp.json
jq '.multisig_server.ip="'$btIP'"' temp.json > configuration.json
echo "configuration.json"
cat configuration.json
rm temp.json
rm temp2.json
cd ~/go/src/github.com/bazo-blockchain/bazo-client

cd ~/BAZO-Scripts-Fabio
git pull

echo "List of Wallets:"
cd ~/BAZO-Scripts-Fabio/Wallets
ls
echo " "
echo "Is there a Wallet with the Wallet GCP$location.txt on the list? [y/n]"
read selection
if [ "$selection" = "y" ]
  then cp -r ~/BAZO-Scripts-Fabio/Wallets ~/go/src/github.com/bazo-blockchain/bazo-miner
       cp -r ~/BAZO-Scripts-Fabio/Wallets ~/go/src/github.com/bazo-blockchain/bazo-client
       echo "Wallet folder is successfully copied to the miner and client"
  else git pull origin
       echo "copy Wallet folder manually to the client and miner folder"
fi

echo " "
echo "List of Commitments:"
cd ~/BAZO-Scripts-Fabio/Commitments
ls
echo " "
echo "Is there a Commitment with the name Commitment$provider$location.txt on the list above? [y/n]"
read selection
if [ "$selection" = "y" ]
  then cp -r ~/BAZO-Scripts-Fabio/Commitments ~/go/src/github.com/bazo-blockchain/bazo-miner
       echo "Commitment folder is successfully copied to the miner."
  else git pull origin
       echo "Copy Commitment folder manually to the miner folder"
fi

echo " "
echo "Bazo Miner can be started in the Miner folder with: "
echo "./bazo-miner start --database Store.db --address $pbIP:8001 --bootstrap $btIP:8000 --wallet Wallets/WalletGCP$location.txt --commitment Commitments/CommitmentGCP$location.txt --multisig Wallets/WalletGCPCentral.txt --rootwallet Wallets/WalletGCPCentral.txt --rootcommitment Commitments/CommitmentGCPCentral.txt --confirm"
echo " "
