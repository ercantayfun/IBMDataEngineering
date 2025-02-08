#!/bin/bash

# Define MySQL credentials
USER="root"
PASSWORD="BxMZdmgumLkizqlrbxZFcfAV"

# Define the backup filename
BACKUP_FILE="all-databases-backup.sql"

# Define the backup directory with current date format YYYYMMDD
BACKUP_DIR="/home/project/$(date +%Y%m%d)"

# Create the backup directory
mkdir -p "$BACKUP_DIR"

# Perform the backup of all databases
mysqldump --all-databases --user=$USER --password=$PASSWORD > "$BACKUP_FILE"

# Move the backup file to the dated directory
mv "$BACKUP_FILE" "$BACKUP_DIR/"

# Print success message
echo "Backup completed successfully. Backup file is located at: $BACKUP_DIR/$BACKUP_FILE"
