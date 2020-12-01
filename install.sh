#!/bin/sh

set -e

cd "$(dirname "$0")/.."

echo ""
echo "[INSTALL] 	=>	power_button_script.py"
sudo cp power_button_script.py /usr/local/bin/
sudo chmod +x /usr/local/bin/power_button_script.py
echo ""

echo "[INSTALL] 	=>	power_button_bash.sh"
sudo cp power_button_bash.sh /usr/local/bin/
sudo chmod +x /etc/init.d/power_button_bash.sh
echo ""

echo "[SETUP]		=>	Start update default script daemon"
sudo update-rc.d power_button_bash.sh defaults
sudo /etc/init.d/power_button_bash.sh start
echo ""

echo "[END]		=> Power button script and bash script installed"
echo ""
