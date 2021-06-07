#log-plots-time-more-1s-chia.sh
#!/bin/bash
echo "wait..."
grep "Time: [^0]." ~/.chia/mainnet/log/debug.log
