#!/bin/bash

cd ~/Bazo/src/github.com/oigele/bazo-client

for i in {0..50000}
do
	./bazo-client funds --from WalletGCPCentral.txt --to WalletGCPEast.txt --txcount $i --amount 20 --multisig wallet.txt


done
