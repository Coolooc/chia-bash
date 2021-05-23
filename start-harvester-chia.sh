#start-harvester-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia start harvester
deactivate
echo Started.
cd ~/chia-bash
./log-harvester-chia.sh
