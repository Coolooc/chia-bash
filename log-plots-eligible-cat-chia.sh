#log-plots-eligible-tail-chia.sh
#!/bin/bash
echo "wait..."
cat ~/.chia/mainnet/log/debug.log | grep "[^0] plots were eligible"
