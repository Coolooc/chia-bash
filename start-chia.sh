#start-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia start farmer
sleep 60
chia show -a introducer-eu.chia.net:8444
chia show -a node.chia.net:8444
echo Started.