#log-farmer-and-harvester-chia.sh
#!/bin/bash
echo "wait..."
tail -f ~/.chia/mainnet/log/debug.log | grep -i "farmer\|harvester"
