#!/bin/bash
echo "what is your name?"
read MYNAME
echo "hello ${MYNAME}!"
echo "creating file named ${MYNAME}_file...."
touch "${MYNAME}_file"
echo "done."
