#install-chia.sh
#!/bin/bash
cd ~
sudo apt update
sudo apt upgrade -y
sudo apt install git smartmontools -y
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
sh install.sh
#. ./activate