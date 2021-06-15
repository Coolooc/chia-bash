#install-chia-plotter-madmax.sh
#https://github.com/madMAx43v3r/chia-plotter
#!/bin/bash
cd ~
sudo apt install libsodium-dev cmake g++ git -y

git clone https://github.com/madMAx43v3r/chia-plotter.git ~/chia-plotter-madmax
cd ~/chia-plotter-madmax/

git submodule update --init
sh make_devel.sh
cd build/
./chia_plot --help
