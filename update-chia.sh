#update-chia.sh
#!/bin/bash

#stop chia
cd ~/chia-blockchain/
. ./activate
chia stop all -d
chia stop all
chia stop all -d
chia stop all
deactivate

#reinstall chia
cd ~
rm -rf chia-blockchain/
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain/
sh install.sh
. ./activate
chia init
chia init --fix-ssl-permissions
chia start harvester -r
echo "chia version $(chia version)"
deactivate

echo Updated.
