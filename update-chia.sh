#update-chia.sh
#!/bin/bash
./stop-chia.sh
cd ~/chia-blockchain/chia-blockchain-gui/
rm package-lock.json
cd ..
git fetch
git checkout latest
git reset --hard FETCH_HEAD
git status
#If you get RELEASE.dev0 then delete the package-lock.json in chia-blockchain-gui and install.sh again
#git status should say "nothing to commit, working tree clean",
#if you have uncommitted changes, RELEASE.dev0 will be reported.
echo ""
echo ">>>If you get RELEASE.dev0 then delete the package-lock.json in chia-blockchain-gui and install.sh again"
echo '>>>git status should say "nothing to commit, working tree clean",'
echo ">>>if you have uncommitted changes, RELEASE.dev0 will be reported."
read -p "Enter to continue or Ctrl+C to cancel?"
sh install.sh
. ./activate
chia init
chia version
echo Updated.
