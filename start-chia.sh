#start-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia start farmer
echo "wait 2 min..."
sleep 120
#chia show -a introducer-apne.chia.net:8444
#chia show -a introducer-apse.chia.net:8444
#chia show -a introducer-or.chia.net:8444
#chia show -a introducer-va.chia.net:8444
chia show -a introducer-eu.chia.net:8444
chia show -a node-eu.chia.net:8444
#https://chia.keva.app/
cd ~/chia-bash
./new-nodes-chia.sh
echo Started.