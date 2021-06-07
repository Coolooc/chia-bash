#temperature-disk.sh
#!/bin/bash
#sudo sensors
watch -n 10 sudo hddtemp /dev/sd?
