#!/bin/bash

checked_files=""

for file in `find $1`; do

	for file2 in `find $1`; do
		checksum_1=`md5sum $file`
		checksum_2=`md5sum $file2`

		echo $checked_files | grep -c '$file\|$file2' 
		if [ $checksum_1 = $checksum_2 ] && [ $? -eq 0 ]; then
			echo "$file     $file2"
			checked_files="$checked_files $file1 $file2 "
		fi
	done

done

