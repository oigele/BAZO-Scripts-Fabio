#!/bin/bash

echo " "
cd ~/Bazo/src/github.com/oigele/bazo-miner
echo "Removing all files from miner"
rm Log*
rm Store*
rm GCP*
cd ~/Bazo/src/github.com/oigele/bazo-client
echo "Removing all files from client"
rm Log*
rm Store*
rm GCP*
rm client.db
rm Performance*
echo "script execution finished. All data deleted"
echo ""
echo "changing directory back to Scripts"
cd ~/BAZO-Scripts-Fabio

