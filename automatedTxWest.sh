#!/bin/bash

cd ~/Bazo/src/github.com/oigele/bazo-client

for i in {0..10000}
do
	./bazo-client funds --from WalletGCPWest.txt --to WalletGCPNortheast.txt --txcount $i --amount 1 --multisig WalletGCPCentral.txt


	cd ~/Bazo/src/github.com/oigele/bazo-client
	sleep 0.1
done
