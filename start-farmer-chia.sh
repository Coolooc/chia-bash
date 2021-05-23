#start-farmer-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia start farmer
echo "wait 2 min..."
sleep 120
echo Started.
#cd ~/chia-bash
#./log-chia.sh
#./log-farmer-chia.sh
#./new-nodes-chia.sh
