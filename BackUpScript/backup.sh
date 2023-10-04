#!/bin/bash

# Please note this: both dirertories have to be there ready, script cant't create backup-dir
# For the 1st time run with option --dry-run to make sure script works
# Check to make sure user has entered exactly two argumenrts.
# To simulate real situation, remove logfile, edit one of the files to be backed up and create one new:
# AND THE GIVE THE COMMAND AS: 	./backup.sh Directory_to_be_backuped/ backup  (without slash)

if [ $# -ne 2 ]
then
	echo "Usage: backup.sh <source_directory> <target_directory>"
	echo "Pleae try again."
	exit 1
fi

# Check to see if rsync is installed
if ! command -v rsync > /dev/null 2>&1
then
	echo "This script requires rsync to be installed."
	echo "Please use your distributions's package manager to install it and try again."
	exit 2
fi

# Capture the current date, and store it in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# rsync_options="-avb --backup-dir $2/current_date --delete --dry-run"
rsync_options="-avb --backup-dir $2/current_date --delete"

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log
