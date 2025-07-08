#!/bin/bash

# Directory to back up
SOURCE_DIR="$1"
BACKUP_DIR="$2"

if [[ -z "$SOURCE_DIR" || -z "$BACKUP_DIR" ]]; then
  echo "Usage: $0 /path/to/source /path/to/backup"
  exit 1
fi

TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
DEST="$BACKUP_DIR/backup-$TIMESTAMP.tar.gz"

tar -czf "$DEST" "$SOURCE_DIR"

echo "Backup of $SOURCE_DIR completed: $DEST"
