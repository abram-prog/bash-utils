#!/bin/bash

# Deletes log files older than 7 days from /var/log

TARGET_DIR="/var/log"
DAYS=7

echo "Cleaning up logs older than $DAYS days in $TARGET_DIR..."

find "$TARGET_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "Cleanup complete."
