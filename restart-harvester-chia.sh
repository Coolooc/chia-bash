#restart-harvester-chia.sh
#!/bin/bash
cd ~/chia-bash
./stop-chia.sh
#echo "wait 2 min..."
#sleep 120
./start-harvester-chia.sh
echo Restarted.
