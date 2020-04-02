#!/bin/bash

for file in $(find $1); do
	if [ -L $file ] && [ ! -e $file ]; then
		echo $file
	fi
done
