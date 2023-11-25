#!/bin/bash

# Script to collect system information

output_file="system_info.txt"

echo "System Information" > "$output_file"
echo "------------------" >> "$output_file"

echo -e "\n### CPU Information ###\n" >> "$output_file"
lscpu >> "$output_file"

echo -e "\n### Memory Information ###\n" >> "$output_file"
free -h >> "$output_file"

echo -e "\n### Disk Information ###\n" >> "$output_file"
df -h >> "$output_file"

echo "System information collected and saved to $output_file."
