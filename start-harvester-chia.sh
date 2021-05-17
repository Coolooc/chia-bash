#start-harvester-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia start harvester
echo Started.