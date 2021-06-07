#plotman-status.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
watch -n 10 plotman status
deactivate
