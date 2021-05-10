#restart-chia.sh
#!/bin/bash
#cd ~/chia-blockchain
#. ./activate
#chia start -r
./stop-chia.sh
./start-chia.sh
echo Restarted.