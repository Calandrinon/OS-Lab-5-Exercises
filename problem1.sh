#!/bin/bash

for user in $(sed 's/ \+/ /gi' who.fake | cut -d ' ' -f 1); do
	number_of_processes=`grep -c "^$user" ps.fake`
	echo "$user $number_of_processes"
done
