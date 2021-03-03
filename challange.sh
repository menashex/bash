#!/bin/bash

TARGET="SampleFiles"

mkdir ${TARGET}

echo -n "asdfasdf" > ${TARGET}/asdf.txt
echo "This is a bunch of text" > ${TARGET}/file2.txt
echo "Probably not binary data" > ${TARGET}/third.dat

chmod 400 ${TARGET}/asdf.txt
chmod 755 ${TARGET}/file2.txt
chmod 447 ${TARGET}/third.dat

cd ${TARGET}
for file in *
do
	md5=`echo -n {file} | md5sum | cut -d" " -f1`
	if [ -w ${file} ]
	then
		echo "${md5}: WARNING: FILE IS WORLD WRITEABLE: ${file}"
	else
		echo "${md5}: ${file}"
	fi
done

cd ..
rm -r -f ${TARGET}
