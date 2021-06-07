#log-plots-proofs-found-chia.sh
#!/bin/bash
#echo "wait..."
grep "Found [^0] proofs" ~/.chia/mainnet/log/debug.log
