#log-plots-create-chia.sh
#!/bin/bash
cat $1 | grep "Starting phase" && cat $1 | grep "Time for phase"