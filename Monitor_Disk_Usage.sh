#!/bin/bash

# Script to monitor disk usage

threshold=90
partition="/dev/sda1"

current_usage=$(df -h | grep "$partition" | awk '{print $5}' | cut -d'%' -f1)

if [ "$current_usage" -gt "$threshold" ]; then
    echo "Warning: Disk usage on $partition is above $threshold%."
    # Add notification or other actions as needed
else
    echo "Disk usage on $partition is within acceptable limits."
fi
