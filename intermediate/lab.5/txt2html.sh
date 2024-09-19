#!/bin/bash
# Name: Javier Hernandez Requena
# File: txt2html
# Date: November 28, 2021
# Desc: takes any number of .txt files as arguments and converts each one to HTML files by adding 
#	an HTML header to the beginning of the text file and a closing HTML tag to the end of the file,
#	and by adding a .html extension to the file name



if [[ $# -eq 0 ]]
then
	echo "Usage: ./txt2html file[s]"
	exit 1
fi

for i in $@; do
    if [ -f $i ]; then
        echo "Converting $i to $i.html"
	# Place the new HTML file into a temporary file
        echo "<html><pre>" > temp
        cat "$i" >> temp
        echo "</pre></html>" >> temp
        cp temp $i.html
    fi
done

rm temp
