#wallet-show-chia.sh
#!/bin/bash
cd ~/chia-blockchain/
. ./activate
chia wallet show
deactivate
