#log-plots-time-more-1s-tail-chia.sh
#!/bin/bash
echo "wait..."
tail -f ~/.chia/mainnet/log/debug.log | grep "Time: [^0]."
