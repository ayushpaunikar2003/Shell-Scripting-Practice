#!/bin/bash

echo "This script delete the logs file which are older than 30 days"
path="$1"
echo $path
find $path -mtime +30 -delete
if [ $? -eq 0 ];
then
	echo "The Files are Deleted Sucessfully"
else
	echo "Deletion of file is having some issue"
fi


