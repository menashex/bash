#!/bin/bash

echo $0

myfile="./myfile.txt"
if [ -a $myfile ]
then
	echo "deleting myfile.txt....."
	rm $myfile
else
	echo "creating myfile.txt....."
	touch $myfile
fi

files=`ls`
echo $files

