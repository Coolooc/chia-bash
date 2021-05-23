#temperature.sh
#!/bin/bash
sudo sensors
sudo hddtemp /dev/sd?
#sudo smartctl -a /dev/sda | grep -i temp
