#!/bin/sh

#set -e

#cd "$(dirname "$0")/.."

echo ""
echo "[UN-INSTALL] 	=>	Stopping power button system updates"
sudo update-rc.d power_button_bash.sh remove
sudo /etc/init.d/power_button_bash.sh stop

echo ""
echo "[UN-INSTALL]	=>	.py and .sh scripts"
sudo rm -rf /usr/local/bin/power_button_script.py
sudo rm -rf /etc/init.d/power_button_bash.sh
echo ""

echo "[END]		=>	power button scripts unintstalled" 
echo ""
