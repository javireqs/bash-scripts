#!/bin/bash
# Name: Javier Hernandez Requena
# File: valid
# Date: November 22, 2021
# Desc: prints "yes" if its argument is a valid shell variable name and "no" otherwise


variable_name=$1

test $variable_name = " [a-z] "

if [ "$#" -ne 1 ]
then
	echo "Incorrect number of arguments."
	echo "Usage: valid variable"
	exit 1
fi

if echo "$variable_name " | grep -i "^[_a-z]" > /dev/null
then
	echo "yes"
else
	echo "no"
fi
