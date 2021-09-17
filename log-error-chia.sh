#log-error-chia.sh
#!/bin/bash
echo "wait..."
#tail -F ~/.chia/mainnet/log/debug.log | grep -i "error"
cat ~/.chia/mainnet/log/debug.log | grep -i "error"
