#start-wallet-chia.sh
#!/bin/bash
echo
date
cd ~/chia-blockchain/
. ./activate
chia start wallet
deactivate
echo Started.
