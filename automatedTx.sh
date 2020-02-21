#!/bin/bash

cd ~/Bazo/src/github.com/oigele/bazo-client

for i in {0..500}
do
	./bazo-client funds --from WalletGCPCentral.txt --to WalletCommitteeA.txt --txcount $i --amount 20 --multisig WalletGCPCentral.txt

done
