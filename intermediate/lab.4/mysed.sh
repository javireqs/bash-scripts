#!/bin/bash
# Name: Javier Hernandez Requena
# File: mysed
# Date: November 22, 2021
# Desc: applies the sed script given as the first argument against the file given as the second



if [ "$#" != 2 ]
then
	echo "Incorrect number of arguments"
	echo "Usage: mysed script file"
	exit 1
fi

if [ -n $2 ]
then
	sed $1 $2 > /tmp/filename
	mv /tmp/filename $2
fi
