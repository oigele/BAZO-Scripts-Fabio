#!/bin/bash

echo " "

echo "Adding wallets"
cd ~/Bazo/src/github.com/oigele/bazo-miner
cp wallet* ~/Bazo/src/github.com/oigele/bazo-client
echo "Adding commitments"
cp commitment* ~/Bazo/src/github.com/oigele/bazo-client
echo "finished exection"
