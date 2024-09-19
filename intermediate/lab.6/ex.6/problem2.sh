# Name: Javier Hernandez Requena
# File: problem2
# Date: December 6, 2021
# Desc: Print the integers from 1 to 100 in ten left-aligned columns as octal values preceded by 0


if [ "$#" -ne 0 ]
then
	echo "Incorrect number of arguments."
	echo "Usage: ./problem2"
	exit 1
fi

columns=10
items=100
counter=1

while [ $counter -le $items ]
do
	printf "%-#5o" "$counter"
	mod=$(($counter % $columns))
	if [ $mod -eq 0 ]
	then
		printf "\n"
	fi
	(( counter++ ))
done
