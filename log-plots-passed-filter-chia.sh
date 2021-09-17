#log-plots-passed-filter-chia.sh
#!/bin/bash
echo "wait..."
grep "[^0] plots were eligible" ~/.chia/mainnet/log/debug.log
