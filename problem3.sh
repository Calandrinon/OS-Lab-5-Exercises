#!/bin/bash

for logfile in $(find $1 | grep -i "\.log"); do	
	sort $logfile > templog.txt 
	rm $logfile
	mv templog.txt $logfile
done


