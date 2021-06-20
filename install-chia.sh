#install-chia.sh
#!/bin/bash
cd ~
sudo apt update
sudo apt upgrade -y
sudo apt install -y git smartmontools lm-sensors hddtemp htop iotop atop
#sudo apt install -y glances
sudo sensors-detect
#rm -rf ~/chia-blockchain/
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain/
sh install.sh
. ./activate
chia init
chia version
#https://github.com/ericaltendorf/plotman
#pip install --force-reinstall git+https://github.com/ericaltendorf/plotman@main
#plotman config generate
#vim ~/.config/plotman/plotman.yaml
deactivate
echo Installed.
