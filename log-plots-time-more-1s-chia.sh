#log-plots-time-more-1s-chia.sh
#!/bin/bash
echo "wait..."
cat ~/.chia/mainnet/log/debug.log | grep "Time: [^0]."
