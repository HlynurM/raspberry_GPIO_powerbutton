#!/bin/sh

### BEGIN INIT INFO
# Provides:          power_button_script.py 
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
### END INIT INFO

# Always to run command, put it here

# Run specific functions when asked by the system
case "$1" in
	start)
		echo "Starting power_button_script.py"
		/usr/local/bin/power_button_script.py &
		;;
	stop)
		echo "Stopping power_button_script.py"
		pkill -f /usr/local/bin/power_button_script.py
		;;
	*)
		echo "Usage: /etc/init.d/power_button_bash.sh {start|stop}"
		exit 1
		;;
esac

exit 0
