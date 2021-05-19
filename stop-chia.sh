#stop-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia stop all -d
chia stop all
echo Stoped.