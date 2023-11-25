#!/bin/bash

# Script to monitor system performance

load_threshold=1.5
cpu_load=$(awk '{print $1}' < /proc/loadavg)

if (( $(echo "$cpu_load > $load_threshold" | bc -l) )); then
    echo "High CPU load detected: $cpu_load"
    # Add notification or other actions as needed
else
    echo "CPU load is within acceptable limits: $cpu_load"
fi
