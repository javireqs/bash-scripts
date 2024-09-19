#!/bin/bash
# Name: Javier Requena
# File: suffix
# Date: November 15, 2021
# Desc: Removes the characters given as the second argument from the end of the name of the file given as the first argument

filename=$($1)
suffix=$($2)
newfile=$(echo "sed 's/\$suffix$//'")

echo $filename | $newfile


