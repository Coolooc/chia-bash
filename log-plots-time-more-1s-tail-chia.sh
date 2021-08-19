#log-plots-time-more-1s-tail-chia.sh
#!/bin/bash
echo "wait..."
tail -F ~/.chia/mainnet/log/debug.log | grep "Time: [^0]."
