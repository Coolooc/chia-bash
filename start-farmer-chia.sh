#start-farmer-chia.sh
#!/bin/bash
echo
date
cd ~/chia-blockchain/
. ./activate
chia start farmer -r
deactivate
echo Started.
