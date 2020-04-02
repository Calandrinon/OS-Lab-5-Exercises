#!/bin/bash

for file in `find $1`; do	
	permissions=`ls -l $file | cut -d ' ' -f 1`
	echo $permissions | grep -qF "total"
	if [ $? -eq 0 ]; then
		continue
	fi

	if [ `echo $permissions | cut -c9` = "w" ]; then
		echo $permissions $file
		chmod o-w $file	
		permissions=`ls -l $file | cut -d ' ' -f 1`
		echo $permissions $file
	fi	
done 
