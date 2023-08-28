#!/bin/bash

# Check if the script is run as root
#if [[ $EUID -ne 0 ]]; then
#   echo "This script must be run as root."
#   exit 1
#fi

# Print the current time zone
echo "Current time zone:"
timedatectl show --property=Timezone --value

# Set the new time zone
timedatectl set-timezone Asia/Tehran
timedatectl set-ntp true
sleep 1s
timedatectl set-ntp false
# Set the system time one hour earlier
date -s "-1 hour"

# Print the updated time zone and time
echo "Updated time zone:"
timedatectl show --property=Timezone --value
echo "Updated time:"
date +%T

# Restart the system's time synchronization service (optional)
#systemctl restart systemd-timesyncd

