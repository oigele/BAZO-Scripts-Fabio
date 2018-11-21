#!/bin/bash

echo "Automated script for downloading and preparing the Root Miner for Bazo-blockchain"
echo "  Downloading BAZO-Miner from Github"
go get github.com/bazo-blockchain/bazo-miner
cd /home/ubuntu/go/src/github.com/bazo-blockchain/bazo-miner
git checkout origin/aduno_copy-cherry-picks
go build
echo "Download & build of BAZO-Miner - Finished"
echo " "
