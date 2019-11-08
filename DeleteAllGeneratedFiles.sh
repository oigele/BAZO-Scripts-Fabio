#!/bin/bash

echo " "
cd ~/Bazo/src/github.com/oigele/bazo-miner
echo "Removing all files from miner"
rm Log*
rm Store*
rm wallet*
rm commitment*
cd ~/Bazo/src/github.com/oigele/bazo-client
echo "Removing all files from client"
rm Log*
rm Store*
rm wallet*
rm commitment*
rm client.db
rm Performance*
echo "script execution finished. All data deleted"
