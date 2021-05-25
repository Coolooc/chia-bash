#log-plots-create-chia.sh
#!/bin/bash
cat $1 | grep -P "Starting phase|Time for phase|Total time"
