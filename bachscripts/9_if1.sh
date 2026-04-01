#!/bin/bash

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
	echo "We have entered in IF block..."
	sleep 3
	echo "Your number is greated than 100"
	echo
	date
else
 	echo "We have entered in ELSE block..."
	sleep 3
	echo "Your number is less than 100"
	date	
fi

echo "Execution Successfull"
