#!/bin/bash

cd ~/Bazo/src/github.com/oigele/bazo-client

for i in {0..10000}
do
	./bazo-client funds --from WalletGCPCentral.txt --to wallet1.txt --txcount $i --amount 20 --multisig wallet.txt


cd ~/Bazo/src/github.com/oigele/bazo-client
sleep 0.1
done
