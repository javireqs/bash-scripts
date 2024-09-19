#!/bin/bash
# Name: Javier Hernandez Requena
# File: itsayes
# Date: November 22, 2021
# Desc: returns an exit status of 0 if its argument is "yes," and 1 otherwise


if [ "$#" -ne 1 ]
then
	echo "Incorrect number of arguments."
	echo "Usage: itsayes argument"
	exit 1
fi

case "$1"
in
	"y"	) exit 0;;
	"Y"	) exit 0;;
	"yes"	) exit 0;;
	"Yes"	) exit 0;;
	"YES"	) exit 0;;
	*	) exit 1;;
esac

