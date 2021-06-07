#log-plots-create-chia.sh
#!/bin/bash
echo "wait..."
cat $1 | grep -P "Starting phase|Time for phase|Total time"
