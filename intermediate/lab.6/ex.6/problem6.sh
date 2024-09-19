# Name: Javier Hernandez Requena
# File: problem6
# Date: December 6, 2021
# Desc: Prints the string below as a literal string; that is, prints all of the backslashes and quotation marks

# String = "\"This \nis \na \t\"very\' \"unusual string\n\n\n\n\tthis is the end of it. What a\t\t\nrelief\!\0a"


if [ "$#" -ne 0 ]
then
	echo "Incorrect number of arguments."
	echo "Usage: ./problem6"
	exit 1
fi

literalstr="\"This \nis \na \t\"very\' \"unusual string\n\n\n\n\tthis is the end of it. What a\t\t\nrelief\!\0a"


printf "%s" $literalstr
