#log-plots-found-proofs-chia.sh
#!/bin/bash
echo "wait..."
cat ~/.chia/mainnet/log/debug.log | grep "Found [^0] proofs"
