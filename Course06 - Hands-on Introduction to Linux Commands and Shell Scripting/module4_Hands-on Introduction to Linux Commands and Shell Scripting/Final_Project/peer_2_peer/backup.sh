#!/bin/bash

# This checks if the number of arguments is correct
# If the number of arguments is incorrect ( $# != 2) print error message and exit
if [[ $# != 2 ]]
then
  echo "backup.sh target_directory_name destination_directory_name"
  exit
fi

# This checks if argument 1 and argument 2 are valid directory paths
if [[ ! -d $1 ]] || [[ ! -d $2 ]]
then
  echo "Invalid directory path provided"
  exit
fi

# [TASK 1]
targetDirectory=$1
destinationDirectory=$2

# [TASK 2]
echo "Target Directory: $targetDirectory"
echo "Backup Destination: $destinationDirectory"

# [TASK 3]
currentTS=$(date +%s)

# [TASK 4]
backupFileName="backup-$currentTS.tar.gz"

# We're going to:
  # 1: Go into the target directory
  # 2: Create the backup file
  # 3: Move the backup file to the destination directory

# To make things easier, we will define some useful variables...

# [TASK 5]
origAbsPath=$(pwd)

# [TASK 6]
cd $destinationDirectory
destAbsPath=$(pwd)

# [TASK 7]
cd $origAbsPath
cd $targetDirectory

# [TASK 8]
yesterdayTS=$(($currentTS - 24 * 60 * 60))

declare -a toBackup

for file in $(ls) # [TASK 9]
do
  # [TASK 10]
  if (($(date -r $file +%s) > $yesterdayTS))
  then
    # [TASK 11]
    toBackup+=($file)
  fi
done

# [TASK 12] - Checking the existence of files or directories and creating a backup

# Check if the destination directory exists
if [[ ! -d "$destAbsPath" ]]; then
  echo "Error: Destination directory '$destAbsPath' does not exist."
  exit 1
fi

# Check if the file or directory to be backed up exists
if [[ ! -e "$toBackup" ]]; then
  echo "Error: No files or directories to back up. '$toBackup' does not exist."
  exit 1
fi

# Assign a unique name to the backup file
backupFileName="backup_$(date +'%Y%m%d%H%M%S').tar.gz"

# Perform the backup
tar -czvf "$backupFileName" "$toBackup" 
if [[ $? -ne 0 ]]; then
  echo "Error: Backup creation failed."
  exit 1
fi

echo "Backup created successfully: $backupFileName"

# [TASK 13] - Moving the backup file to the destination directory

# Check if write permission exists for the destination directory
if [[ ! -w "$destAbsPath" ]]; then
  echo "Error: No write permission in destination directory '$destAbsPath'."
  exit 1
fi

# Move the backup file to the destination directory
mv "$backupFileName" "$destAbsPath"
if [[ $? -ne 0 ]]; then
  echo "Error: Failed to move the backup file to '$destAbsPath'."
  exit 1
fi

echo "Backup file successfully moved to $destAbsPath/$backupFileName"

# Check the size of the backup file
backupFileSize=$(stat --format=%s "$destAbsPath/$backupFileName")
if [[ $backupFileSize -eq 0 ]]; then
  echo "Warning: Backup file is empty. Something went wrong."
  exit 1
fi

echo "Backup complete. File saved as $destAbsPath/$backupFileName with size $backupFileSize bytes."

# Congratulations! You completed the final project for this course!
