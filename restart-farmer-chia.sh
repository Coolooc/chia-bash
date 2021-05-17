#restart-farmer-chia.sh
#!/bin/bash
./stop-chia.sh
echo "wait 1 min..."
sleep 60
./start-farmer-chia.sh
echo Restarted.