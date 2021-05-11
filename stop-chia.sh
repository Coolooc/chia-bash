#stop-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia stop -d all
chia stop all
echo Stoped.