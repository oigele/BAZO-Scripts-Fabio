#!/bin/bash

echo " "

cd ~/BAZO-Scripts-Fabio/Commitments
echo "Copying commitments to miner"
cp * ~/Bazo/src/github.com/oigele/bazo-miner
echo "Copying commitments to client"
cp * ~/Bazo/src/github.com/oigele/bazo-client

cd ~/BAZO-Scripts-Fabio/wallets
echo "Copying wallets to miner"
cp * ~/Bazo/src/github.com/oigele/bazo-miner
echo "Copying wallets to client"
cp * ~/Bazo/src/github.com/oigele/bazo-client

echo "done"
