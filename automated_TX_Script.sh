#!/bin/bash

for i in {52..36000}
do
	bazo-client funds --from Wallets/WalletAWS. --to Wallets/WalletAWS. --txcount $i --amount 1 --multisig Wallets/WalletAWSLOndon.txt
	sleep 0.5
done

