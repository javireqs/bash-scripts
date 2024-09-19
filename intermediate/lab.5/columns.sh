# Name: Javier Hernandez Requena
# File: columns
# Date: November 28, 2021
# Desc: accepts two arguments and displays the output in the number of columns specified 


if [ "$#" -ne 2 ]
then
	echo "Incorrect number of arguments."
	echo "Usage: ./columns [columns] [items]"
	exit 1
fi

columns=$1
items=$2
counter=1

if [ $columns -eq 0 ]
then
    	echo "[columns] must be at least 1."
        echo "Try again."
	exit 1
fi

if [ $items -ge 100 ]
then
	while [ $counter -le $items ]
	do
		echo -e "$counter\t\c"
		mod=$(($counter % $columns))
		if [ $mod -eq 0 ]
		then
			echo
		fi
		(( counter++ ))
	done
else
	echo "[items] must be at least 100."
	echo "Try again."
fi

	
