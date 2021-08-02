#start-harvester-chia.sh
#!/bin/bash
echo
date
cd ~/chia-blockchain/
. ./activate
chia start harvester -r
deactivate
echo Started.
