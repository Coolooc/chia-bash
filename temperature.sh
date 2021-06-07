#temperature.sh
#!/bin/bash
#echo
#uptime
#echo
#sudo sensors
watch -n 10 sudo hddtemp /dev/sd?
#echo
#echo sda
#sudo smartctl -a /dev/sda | grep -i temp
#echo sdb
#sudo smartctl -a /dev/sdb | grep -i temp
#echo sdc
#sudo smartctl -a /dev/sdc | grep -i temp
#echo sdd
#sudo smartctl -a /dev/sdd | grep -i temp
