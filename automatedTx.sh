#!/bin/bash

cd ~/Bazo/src/github.com/oigele/bazo-client

for i in {0..5000}
do
	./bazo-client funds --from WalletGCPCentral.txt --to WalletGCPWest.txt --txcount $i --amount 20 --multisig WalletGCPCentral.txt
sleep 0.1

done
