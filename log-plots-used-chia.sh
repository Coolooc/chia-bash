#log-plots-used-chia.sh
#!/bin/bash
cd ~

cat ~/.chia/mainnet/log/debug.log | grep "[^0] plots were" > used_plots_0.txt
less used_plots_0.txt
rm used_plots_0.txt

cat ~/.chia/mainnet/log/debug.log | grep "[^0-1] plots were" > used_plots_0-1.txt
less used_plots_0-1.txt
rm used_plots_0-1.txt

cat ~/.chia/mainnet/log/debug.log | grep "Found [^0] proof" > found_proof.txt
less found_proof.txt
rm found_proof.txt
