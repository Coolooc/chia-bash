#start-farmer-chia.sh
#!/bin/bash
echo
date
cd ~/chia-blockchain
. ./activate
chia start farmer
deactivate
echo "wait 2 min..."
sleep 120
echo Started.
#cd ~/chia-bash
#./log-chia.sh
#./log-farmer-chia.sh
#./new-nodes-chia.sh
