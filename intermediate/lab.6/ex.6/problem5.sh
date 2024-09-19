# Name: Javier Hernandez Requena
# File: problem5
# Date: December 6, 2021
# Desc: Print the last 100 words of stopwords.txt converted to UPPERCASE in 10 evenly spaced columns


if [ "$#" -ne 0 ]
then
	echo "Incorrect number of arguments."
	echo "Usage: ./problem5"
	exit 1
fi

wordlist=$(tail -100 stopwords.txt)
counter=1
uppercasewl=$(echo $wordlist | tr '[:lower:]' '[:upper:]')

for word in $uppercasewl
do
	printf "%-15s" "$word"
	mod=$(($counter % 10))
	if [ $mod -eq 0 ]
	then
		printf "\n"
	fi
	(( counter++ ))
done
