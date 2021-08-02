#log-error-chia.sh
#!/bin/bash
echo "wait..."
tail -f ~/.chia/mainnet/log/debug.log | grep -i "error"
#cat ~/.chia/mainnet/log/debug.log | grep -i "error"
