#log-plots-passed-filter-tail-chia.sh
#!/bin/bash
echo "wait..."
tail -F ~/.chia/mainnet/log/debug.log | grep "[^0] plots were eligible"
