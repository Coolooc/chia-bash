#restart-farmer-chia.sh
#!/bin/bash
cd ~/chia-blockchain
./stop-chia.sh
echo "wait 2 min..."
sleep 120
./start-farmer-chia.sh
echo Restarted.
