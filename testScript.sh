#!/bin/bash

pbIP=$(curl https://ipinfo.io/ip)
btIP=123.123.123.123
echo " "
echo "./bazo-miner start --database Store.db --address $pbIP:8000 --bootstrap $btIP:8000 --wallet Wallet.txt --commitment Commitment.txt --multisig RootAccountWallet.txt --rootwallet RootAccountWallet.txt --rootcommitment RootAccountCommitment.txt --confirm" 
