#restart-harvester-chia.sh
#!/bin/bash
cd ~/chia-blockchain
./stop-chia.sh
echo "wait 2 min..."
sleep 120
./start-harvester-chia.sh
echo Restarted.
