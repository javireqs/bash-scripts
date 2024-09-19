# Name: Javier Hernandez Requena
# File: problem1
# Date: December 6, 2021
# Desc: Print the integers from 1 to 100 as percentages, in ten right-aligned, evenly spaced columns


if [ "$#" -ne 0 ]
then
	echo "Incorrect number of arguments."
	echo "Usage: ./problem1"
	exit 1
fi

columns=10
items=100
counter=1

while [ $counter -le $items ]
do
	printf "%10d%%" $counter
	mod=$(($counter % $columns))
	if [ $mod -eq 0 ]
	then
		printf "\n"
	fi
	(( counter++ ))
done
