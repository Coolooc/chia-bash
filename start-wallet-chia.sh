#start-wallet-chia.sh
#!/bin/bash
echo
date
cd ~/chia-blockchain/
. ./activate
chia start wallet -r
deactivate
echo Started.
