#status-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia show -s -c
chia farm summary
chia farm challenges