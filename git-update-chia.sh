#git-update-chia.sh
#!/bin/bash
cd ~/chia-bash
git fetch
git reset --hard
git pull
chmod +x *.sh
