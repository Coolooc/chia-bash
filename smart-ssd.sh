#smart-ssd.sh
#!/bin/bash
echo
sudo smartctl -a /dev/$1 | grep -P "Model|Power_On|Temperature_|SSD_|Total_"
