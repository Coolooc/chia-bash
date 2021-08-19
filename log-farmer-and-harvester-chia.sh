#log-farmer-and-harvester-chia.sh
#!/bin/bash
echo "wait..."
tail -F ~/.chia/mainnet/log/debug.log | grep -i "farmer\|harvester"
