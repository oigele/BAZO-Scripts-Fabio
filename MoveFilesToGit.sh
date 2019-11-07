#!/bin/bash

echo " "
echo "Deleting old wallets and commitments"
cd ~/BAZO-Scripts-Fabio/Wallets
rm *
echo "Deleted all wallets"
cd ~/BAZO-Scripts-Fabio/Commitments
rm *
echo "Deleted all commitments"
echo "Copying wallets to git repository"
cd ~/Bazo/bin
cp wallet.txt wallet1.txt ~/BAZO-Scripts-Fabio/Wallets
echo "Copying commitments to git repository"
cp commitment.txt commitment1.txt ~/BAZO-Scripts-Fabio/Commitments
echo "Stage files"
cd ~/BAZO-Scripts-Fabio/
git add *
echo "End of this program. Now the files need to be commited and pushed"
