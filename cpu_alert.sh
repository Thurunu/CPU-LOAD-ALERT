#!/bin/bash

THRESHOLD=0.8
CORES=$(nproc --all)

# echo "CPU current load: $CURRENT_LOAD"
# echo "Threshold: $THRESHOLD"

while true; do

    CURRENT_LOAD=$(cat /proc/loadavg | awk '{print $1}')

    # Calculate load percentage. Use bc for floating-point division
    loadPercentage=$(echo "scale=2; $CURRENT_LOAD / $CORES" | bc)

    # echo "CPU load percentage: $(echo "$loadPercentage * 100" | bc)%"

    # Comparison using integer comparison within double parentheses
    if (( $(echo "$loadPercentage > $THRESHOLD" | bc -l) )); then
        echo "CPU load is high: $(echo "$loadPercentage * 100" | bc)%"
        notify-send "CPU Load Alert" "CPU load is high: $(echo "$loadPercentage * 100" | bc)%" -u critical -t 2500
    # else
        # echo "CPU load is normal: $(echo "$loadPercentage * 100" | bc)%"
        # notify-send "CPU Load Alert" "CPU load is normal: ${loadPercentage}%" -u low

    fi  
    sleep 10

done
