#new-nodes-chia.sh
#!/bin/bash
#https://github.com/Chia-Network/chia-blockchain/wiki/Resolving-Sync-Issues---Port-8444#speed-up-connecting-to-nodes
#dig dns-introducer.chia.net
#https://chia.keva.app/
#https://chia.powerlayout.com/
cd ~/chia-blockchain
. ./activate
echo "node.chia.net" > nodes.txt
echo "introducer-eu.chia.net" >> nodes.txt
dig dns-introducer.chia.net | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' >> nodes.txt
curl -G https://chia.keva.app/ | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' >> nodes.txt
echo "wait..."
i=1
while read LINE; do
	echo $i
	chia show -a $LINE:8444
	i=$((i+1))
done < nodes.txt
rm nodes.txt
echo "New nodes added."
chia show -sc