#!/bin/bash

LOG_FOLDER="/var/log"
ARCHIVE_FOLDER="/home/gandhi/archive"
ARCHIVE_NAME="archive"

if [[ -d $ARCHIVE_FOLDER ]]
then
	echo "Archive folder exist, checking if $ARCHIVE_NAME.tar exist..."
	if [[ -f $ARCHIVE_FOLDER/$ARCHIVE_NAME.tar ]]
	then
		echo "$ARCHIVE_NAME exist, proceeding to delete tarball..."
		rm $ARCHIVE_FOLDER/$ARCHIVE_NAME.tar
	fi
else
	mkdir -p $ARCHIVE_FOLDER
	echo "Archive folder CREATED."
fi
echo "Compressing $LOG_FOLDER folder to $ARCHIVE_FOLDER"
tar -cvf $ARCHIVE_FOLDER/archive.tar $LOG_FOLDER

