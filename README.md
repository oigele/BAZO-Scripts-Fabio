# Automated Setup For BAZO

## General Information

GO_setup_script:
1. It downloads GO with SNAP
2. It updates GCC to the latest version
3. It clears GO - Cache
4. It sets GOPATH in the `.profile`
5. It sets the machines public IP to the alias `pubIP`
6. It downloads the jq package for `.json` operations
7. It enables colorful Prompt

RootMiner_Setup_Script:
1. It downloads the Miner application and builds it. 

Client_Miner_Setup_Script:
1. Id downloads and builds Miner and Client
2. It creates an account, transfer 2000 funds to the newly created account and enables staking for the account. 


## Setup

Clone this Repo with:
```
git clone https://github.com/febe19/BAZO-Scripts-Fabio.git
```

Then `cd` into folder and let the script run:
```
cd BAZO-Scripts-Fabio
source #the_wanted_script#
```

Now you can use the BAZO-Miner & BAZO-Client
