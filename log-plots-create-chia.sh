#log-plots-create-chia.sh
#!/bin/bash
cat $1 | grep -i "Starting phase"
cat $1 | grep -i "Time for phase"
cat $1 | grep -i "Total time"
