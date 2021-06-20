#farm-challenges-watch-chia.sh
#!/bin/bash
cd ~/chia-blockchain/
. ./activate
watch -n 10 chia farm challenges
deactivate
