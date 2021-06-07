#log-plots-passed-filter-cat-chia.sh
#!/bin/bash
echo "wait..."
grep "[^0] plots were eligible" ~/.chia/mainnet/log/debug.log
