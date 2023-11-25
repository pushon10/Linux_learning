#!/bin/bash

# Script to backup important files

backup_dir="/backup"
source_dir="/var/data"

timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="backup_$timestamp.tar.gz"

tar -czvf "$backup_dir/$backup_file" "$source_dir"

echo "Backup completed: $backup_dir/$backup_file"

