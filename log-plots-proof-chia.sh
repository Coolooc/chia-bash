#log-plots-proof-chia.sh
#!/bin/bash
cd ~

cat ~/.chia/mainnet/log/debug.log | grep "[^0] plots were" > used_plot.txt
less used_1_plot.txt
rm used_1_plot.txt

cat ~/.chia/mainnet/log/debug.log | grep "[^0-1] plots were" > used_plots.txt
less used_plots.txt
rm used_plots.txt

cat ~/.chia/mainnet/log/debug.log | grep "Found [^0] proof" > found_proof.txt
less found_proof.txt
rm found_proof.txt
