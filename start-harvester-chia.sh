#start-harvester-chia.sh
#!/bin/bash
echo
date
cd ~/chia-blockchain
. ./activate
chia start harvester
deactivate
echo Started.
