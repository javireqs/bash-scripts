# Name: Javier Hernandez Requena
# File: problem7
# Date: December 6, 2021
# Desc: Print the string below explicitly enforcing the backslashed characters

# String = str='\tStarting with a tab\n\t\tand continuing with\n\t\t\tone more tab\n\t\t\t\tindent on each new line!'



if [ "$#" -ne 0 ]
then
	echo "Incorrect number of arguments."
	echo "Usage: ./problem7"
	exit 1
fi


printf "%b" str='\tStarting with a tab\n\t\tand continuing with\n\t\t\tone more tab\n\t\t\t\tindent on each new line!'

