#log-farmer-chia.sh
#!/bin/bash
echo "wait..."
tail -f ~/.chia/mainnet/log/debug.log | grep farmer