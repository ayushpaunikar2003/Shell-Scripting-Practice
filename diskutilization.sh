#!/bin/bash


echo "Check disk usage in Linux System"

disk_size=`df -h | grep "/dev/sda2" | awk '{print $5}' | cut -d '%' -f 1`

echo "$disk_size% of disk is filled"

if [ $disk_size -gt 80 ];
then
	echo "The disk is utilized more than 80%, expand disk size or delete unwanted files soon"
else
	echo "Enough disk is available"
fi

