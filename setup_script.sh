#!/bin/bash

echo "Automated script for downloading and preparing BAZO Keypairgen, miner and client"
sudo snap install --classic go
echo "Setup go finished:"
go version
go env
echo " "

echo "Updating GCC"
sudo apt-get update
sudo apt install gcc
echo "finished updating gcc"
echo " "

echo "Clear GO cache"
cd /home/ubuntu/.cache/
sudo rm -R go-build/
echo "GO cache cleared"
echo " "

echo "SET GOPATH"
echo "export PATH=$PATH:/usr/local/go/bin" >> .profile
echo "export GOPATH=$HOME/go;" >> .profile
echo "export PATH=$PATH:$GOPATH/bin;" >> .profile
echo "SET GOPATH done"
echo " "

echo "Setup BAZO-Keypairgen started"
go get github.com/bazo-blockchain/bazo-keypairgen
cd
cd /home/ubuntu/go/src/github.com/bazo-blockchain/bazo-keypairgen
go build
./bazo-keypairgen validator.txt
./bazo-keypairgen multisig.txt
echo "BAZO-Keypairgen download done"

echo " "
echo "BAZO-Miner Download startet."
go get github.com/bazo-blockchain/bazo-miner
cd
cd /home/ubuntu/go/src/github.com/bazo-blockchain/bazo-keypairgen
cp validator.txt /home/ubuntu/go/src/github.com/bazo-blockchain/bazo-miner/validator.txt
cp multisig.txt /home/ubuntu/go/src/github.com/bazo-blockchain/bazo-miner/multisig.txt
echo "Files copied"
cd
validator_file="/home/ubuntu/go/src/github.com/bazo-blockchain/bazo-miner/validator.txt"
first_key=$(head -n1 "$validator_file" | tr -d '\n')
echo $first_key
second_key=$(head -n2 "$validator_file" | tail -n1 | tr -d '\n')
echo $second_key
configs_file="/home/ubuntu/go/src/github.com/bazo-blockchain/bazo-miner/storage/configs.go"
sed -ie "s/INITROOTPUBKEY1 = .*/INITROOTPUBKEY1 = \"$first_key\"/" "$configs_file"
sed -ie "s/INITROOTPUBKEY2 = .*/INITROOTPUBKEY2 = \"$second_key\"/" "$configs_file"
cd /home/ubuntu/go/src/github.com/bazo-blockchain/bazo-miner
go build
echo "Miner Setup done"

