#plotman-status.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
watch plotman status
deactivate
