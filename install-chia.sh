#install-chia.sh
#!/bin/bash
cd ~
sudo apt update
sudo apt upgrade -y
sudo apt install -y git smartmontools lm-sensors hddtemp
#sudo apt install -y glances
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
sh install.sh
. ./activate
chia init
chia version
deactivate
echo Installed.
