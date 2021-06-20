#!/bin/bash
#ubuntu 20.04 LTS

#update packages
sudo apt update
sudo apt upgrade -y

#download CA keys
cd ~
rm -rf ca-keys
mkdir ca-keys
cd ca-keys
wget https://gitlab.com/ecopool-public/chia-telemetery-client/-/raw/master/pool-certificates/chia_ca.crt
wget https://gitlab.com/ecopool-public/chia-telemetery-client/-/raw/master/pool-certificates/chia_ca.key
wget https://gitlab.com/ecopool-public/chia-telemetery-client/-/raw/master/pool-certificates/private_ca.crt
wget https://gitlab.com/ecopool-public/chia-telemetery-client/-/raw/master/pool-certificates/private_ca.key

#install chia
cd ~
#rm -rf .chia
rm -rf chia-blockchain
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
sh install.sh

#init chia
. ./activate
chia init
chia init -c ~/ca-keys
rm -rf ~/ca-keys

chia configure --enable-upnp false
chia configure --set-farmer-peer 136.243.104.155:8447
chia configure --set-log-level INFO

chia start harvester
sleep 10
chia stop all -d
chia stop all
deactivate

#install ecopool-client
cd ~
rm -rf ecopool-client
git clone https://gitlab.com/ecopool-public/chia-telemetery-client.git ~/ecopool-client

curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
sudo apt install nodejs -y

cd ~/ecopool-client

sudo npm i -g pm2

pm2 delete all

sudo npm i -g yarn
yarn install

echo '{"chiaCliPath":"/home/'$USER'/chia-blockchain"}' > ./config/local.json

pm2 start npm --name api -- run start
pm2 start npm --name frontend -- run serve
pm2 save

#startup
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u $USER --hp /home/$USER

pm2 status

echo ""
echo ""
echo ""
echo ""
echo "================================================================================="
echo "Ecopool client will be available on url http://localhost:3401/ and http://$(hostname -I):3401 in several moments"
echo "Клиент ecopool будет запущен по адресу http://localhost:3401/ и http://$(hostname -I):3401 через несколько мгновений"
echo "================================================================================="







