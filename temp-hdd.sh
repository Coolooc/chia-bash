#temp-hdd.sh
#!/bin/bash
sudo smartctl -a /dev/$1 | grep -i temp
sudo hddtemp /dev/$1