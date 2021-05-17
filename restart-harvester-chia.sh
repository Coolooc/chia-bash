#restart-harvester-chia.sh
#!/bin/bash
./stop-chia.sh
echo "wait 1 min..."
sleep 60
./start-harvester-chia.sh
echo Restarted.