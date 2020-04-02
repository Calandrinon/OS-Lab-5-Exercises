#!/bin/bash

number_of_files_found=0

for file in $(find $1 | grep -i "\.c")
do
	
	if [ ! -f $file ]; then
		continue
	fi	
	
	number_of_lines=`wc -l $file | cut -d ' ' -f 1`
	
	if [ $number_of_lines -gt 500 ]; then
		echo $file
		number_of_files_found=$(expr $number_of_files_found + 1)
	fi

	if [ $number_of_files_found -eq 2 ]; then
		break	
	fi
done


