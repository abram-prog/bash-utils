#!/bin/bash

# Compresses log files older than 7 days in a target directory

TARGET_DIR="/var/log"
DAYS=7

echo "Compressing logs older than $DAYS days in $TARGET_DIR..."

find "$TARGET_DIR" -type f -name "*.log" -mtime +$DAYS -exec gzip {} \;

echo "Compression complete."
