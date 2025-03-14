#!/bin/bash

# Define the CPU load threshold (80%)
THRESHOLD=0.8

# Get the number of CPU cores
CORES=$(nproc --all)

# Loop continously to monitor CPU load
while true; do
    # Get the current 1-minute load average
    CURRENT_LOAD=$(cat /proc/loadavg | awk '{print $1}')

    # Calculate the CPU load percentage
    loadPercentage=$(echo "scale=2; $CURRENT_LOAD / $CORES" | bc)

    # Check if the load exceeds the threshold
    if (( $(echo "$loadPercentage > $THRESHOLD" | bc -l) )); then
        # Send a critical notification with a 2.5-second timeout
        notify-send "⚠️ High CPU Usage" "CPU load is high: $(echo "$loadPercentage * 100" | bc)%" -u critical -t 2500 --transient
    fi

    # Wait for 10 seconds before checking again
    sleep 10
done