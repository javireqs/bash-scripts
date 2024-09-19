# Name: Javier Hernandez Requena
# File: problem4
# Date: December 6, 2021
# Desc: Print the last 100 words of stopwords.txt, left-aligned, in 10 evenly spaced columns


if [ "$#" -ne 0 ]
then
	echo "Incorrect number of arguments."
	echo "Usage: ./problem4"
	exit 1
fi

wordlist=$(tail -100 stopwords.txt)
counter=1


for word in $wordlist
do
	printf "%-15s" "$word"
	mod=$(($counter % 10))
	if [ $mod -eq 0 ]
	then
		printf "\n"
	fi
	(( counter++ ))
done
