#farm-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
chia farm summary
chia farm challenges
deactivate
