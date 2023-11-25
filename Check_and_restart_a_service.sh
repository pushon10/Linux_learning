#!/bin/bash

# Script to check and restart a service

service_name="apache2"

if systemctl is-active --quiet "$service_name"; then
    echo "$service_name is running. No action needed."
else
    echo "$service_name is not running. Restarting..."
    systemctl restart "$service_name"
    echo "Restarted $service_name."
fi
