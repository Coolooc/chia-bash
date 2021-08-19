#log-plots-proofs-found-tail-chia.sh
#!/bin/bash
echo "wait..."
tail -F ~/.chia/mainnet/log/debug.log | grep -i "Found [^0] proofs"
