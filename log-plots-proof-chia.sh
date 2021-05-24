#log-plots-proof-chia.sh
#!/bin/bash
cd ~
rm -rf log-plots
mkdir log-plots
cd log-plots/
cp ~/.chia/mainnet/log/debug.log ./debug191.log
scp user1@10.1.2.189:/home/user1/.chia/mainnet/log/debug.log ./debug189.log
scp user1@10.1.2.192:/home/user1/.chia/mainnet/log/debug.log ./debug192.log
cat debug*.log | grep "[^0] plots were" > used_plots.txt
less used_plots.txt
cat debug*.log | grep "Found [^0] proof" > found_proof.txt
less found_proof.txt
