#!/bin/bash

output=""

[ ! -f $1 ] && echo "The given parameter is not a file!" && exit 69; 

for line in `cat $1`; do
	output="$output$line@scs.ubbcluj.ro,"	
done

final_output=`echo $output | sed 's/,$//gi'`
echo $final_output
