#log-plots-eligible-chia.sh
#!/bin/bash
echo "wait..."
tail -f ~/.chia/mainnet/log/debug.log | grep "[^0] plots were eligible"
