# Automated Setup For BAZO

## General Information

This Script is for setting up the key parts of the BAZO-Blockchain on a new UBUNTU Virtual Machine. 
1. It downloades GO with SNAP
2. It updates GCC to the latest version
3. It clears GO - Cache
4. It sets GOPATH in the `.profile`
5. It gets the BAZO-Keypairgen form `github.com/bazo-blockchain/bazo-keypairgen`. Then it creates the `validator.txt` & `multisig.txt`.
6. It gets the BAZO-Miner from `github.com/bazo-blockchain/bazo-miner`. Then it copies `validator.txt` & `multisig.txt` from step 5. into the correct folder and replaces `INITROOTKEY1` & `INITROOTKEY2`
7. It gets the BAZO-Client from `github.com/bazo-blockchain/bazo-client`
8. It enables colorfull Prompt

## Setup

Clone this Repo with:
```
git clone https://github.com/febe19/BAZO-Scripts-Fabio.git
```

Then `cd` into folder and let the script run:
```
cd BAZO-Scripts-Fabio
source setup_script.sh
```

Now you can use the BAZO-Miner & BAZO-Client
