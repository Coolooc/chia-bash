#log-plots-used-all-servers-chia.sh
#!/bin/bash
cd ~
rm -rf log-plots-used
mkdir log-plots-used
cd log-plots-used/

cp ~/.chia/mainnet/log/debug.log ./debug191.log
scp user1@10.1.2.189:/home/user1/.chia/mainnet/log/debug.log ./debug189.log
scp user1@10.1.2.192:/home/user1/.chia/mainnet/log/debug.log ./debug192.log

cat debug*.log | grep "[^0] plots were" > used_plots_0.txt
less used_plots_0.txt
rm used_plots_0.txt

cat debug*.log | grep "[^0-1] plots were" > used_plots_0-1.txt
less used_plots_0-1.txt
rm used_plots_0-1.txt

cat debug*.log | grep "Found [^0] proof" > found_proof.txt
less found_proof.txt
rm found_proof.txt
