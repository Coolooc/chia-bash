#log-lan-chia.sh
#!/bin/bash
echo "wait..."
tail -f ~/.chia/mainnet/log/debug.log | grep 10.1.2.