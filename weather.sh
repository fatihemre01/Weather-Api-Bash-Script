#!/bin/bash

echo "What's your name?"
read name
echo "Welcome $name! Do you want to see weather informations? (y/n)"
read answer

if [[ $answer == "y" ]]; then
	echo "Loading informations..."
	sleep 1
	echo "........"
	sleep 1
	echo "**......"
	sleep 1
	echo "****...."
	sleep 1
	echo "******.."
	sleep 1
	echo "********"
	sleep 1
	echo "--------------------"
	sleep 1

	for x in $(cat cities.txt)
	do
		weather=$(curl -s http://wttr.in/$x?format=3)
		echo "$weather"
	done
elif [[ $answer == "n" ]]; then
	echo "Ok..."
	exit 0
else
	echo "Enter y or n next time!"
	exit 1
fi
