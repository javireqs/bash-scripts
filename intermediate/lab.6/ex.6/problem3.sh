# Name: Javier Hernandez Requena
# File: problem3
# Date: December 6, 2021
# Desc: Print the integers from 0 to 255 as hex values with a prefix of 0x in 8 evenly spaced columns


if [ "$#" -ne 0 ]
then
	echo "Incorrect number of arguments."
	echo "Usage: ./problem3"
	exit 1
fi

columns=8
items=255
counter=1

while [ $counter -le $items ]
do
	printf "%-#10x" "$counter"
	mod=$(($counter % $columns))
	if [ $mod -eq 0 ]
	then
		printf "\n"
	fi
	(( counter++ ))
done
