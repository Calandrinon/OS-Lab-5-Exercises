#!/bin/bash

cat df.fake | sed 's/ \+/ /gi' | while read drive; do
	drive_name=`echo $drive | cut -d ' ' -f 6`
	first_token=`echo $drive | cut -d ' ' -f 1`
	[ $first_token = "Filesystem" ] && continue;

	drive_size=`echo $drive | cut -d ' ' -f 2 | sed 's/.$//gi'`
	space_in_use=`echo $drive | cut -d ' ' -f 5 | sed 's/.$//gi'`
	free_space=`expr 100 - $space_in_use`

	if [ $drive_size -lt 1000 ] || [ $free_space -lt 20 ]; then
		echo $drive_name
	fi

done 

