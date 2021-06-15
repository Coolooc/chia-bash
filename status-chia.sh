#status-chia.sh
#!/bin/bash
cd ~/chia-blockchain/
. ./activate
chia show -sc
deactivate
