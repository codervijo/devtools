#!/bin/bash

LOG_FOLDER="/var/log"
#/var/log
ARCHIVE_FOLDER="/home/gandhi/archive"
#if [[ -d $ARCHIVE_FOLDER ]]
#then
#	echo "Archive folder EXIST, removing in process..."
#	rm -r $ARCHIVE_FOLDER
#else
#	mkdir -p $ARCHIVE_FOLDER/temp
#	echo "Archive folder CREATED."
#fi
if [[ -d $ARCHIVE_FOLDER/temp ]]
then 
	echo "Compressing $LOG_FOLDER folder to $ARCHIVE_FOLDER/temp."
	tar -cvf $ARCHIVE_FOLDER/arc.tar $LOG_FOLDER
fi
