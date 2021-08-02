#install-chia-plotter-madmax.sh
#https://github.com/madMAx43v3r/chia-plotter
#!/bin/bash
cd ~
sudo apt install -y libsodium-dev cmake g++ git build-essential

git clone https://github.com/madMAx43v3r/chia-plotter.git 
cd chia-plotter

git submodule update --init
./make_devel.sh
cd build/
./chia_plot --help
