#restart-chia.sh
#!/bin/bash
#cd ~/chia-blockchain
#. ./activate
#chia start -r
./stop-chia.sh
echo "wait 1 min..."
sleep 60
./start-chia.sh
echo Restarted.