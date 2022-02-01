#!/bin/bash
input=hello
while [ "$input" != "bitch" ]
do
	echo "enter a word, bitch to quit"
	read input
	echo "you typed: $input"
done
