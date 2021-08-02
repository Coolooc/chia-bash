#log-plots-proofs-found-tail-chia.sh
#!/bin/bash
echo "wait..."
tail -f ~/.chia/mainnet/log/debug.log | grep -i "Found [^0] proofs"
