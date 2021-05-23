#start-farmer-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia start farmer
echo "wait 5 min..."
sleep 300
echo Started.
cd ~/chia-bash
./log-chia.sh
#./log-farmer-chia.sh
#./new-nodes-chia.sh
