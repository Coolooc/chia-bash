#new-nodes-chia.sh
#!/bin/bash
cd ~/chia-blockchain
. ./activate
curl -G https://chia.keva.app/ | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' > nodes.txt
echo "wait..."
i=1
while read LINE; do
	echo $i
	chia show -a $LINE:8444
	let i++
done < nodes.txt
rm nodes.txt
echo "New nodes added."
chia show -c