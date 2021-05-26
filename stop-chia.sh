#stop-chia.sh
#!/bin/bash
date
cd ~/chia-blockchain
. ./activate
chia stop all -d
chia stop all
deactivate
echo Stoped.
