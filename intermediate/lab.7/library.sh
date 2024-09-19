fd!/bin/bash
# Name: Javier Hernandez Requena
# File: library.sh
# Date: December 17, 2021
# Desc: contains all functions for Lab 7


# join_with Function

join_with () 
{ 
	local IFS="$1";
	shift;
	echo "$*"
}



# cube Function

cube ()
{
	local IFS=
	if [[ $# -eq 0 ]] || [[ "*" != [^0-9] ]]
	then
		echo "Usage: cube number(s)"
		return 1
	fi
	
	local IFS=" "
	for number in $*
	do
		printf "%6s: %d\n" $number $(( number**3 ))"
	done
}



# chg_case Function

chg_case ()
{
	arg_count=$#

	if [[ $arg_count = 1 ]]
	then
        	read data
	elif [[ $arg_count = 2 ]]
	then
        	data=$2
	else
        	echo "Invalid number of arguments"
		echo "Usage: chg_case tolower "STRING" OR chg_case toupper "string""
	fi

	if [[ $1 = "tolower" ]]
	then
        	echo "$data" | tr '[:upper:]' '[:lower:]'
	elif [[ $1 = "toupper" ]]
	then
        	echo "$data" | tr '[:lower:]' '[:upper:]'
	else
        	echo "Invalid argument"
		echo "Usage: chg_case tolower "STRING" OR chg_case toupper "string""
	fi
}



# go2 Function

go2() {
    currdir=$(pwd)
    BASEDIR=~/shared/shell/7/public_html/
    if [ $# -eq 0 ]
    then
        cd $BASEDIR 2> /dev/null
    fi
    
    if [ $# -eq 1 ]
    then
        cd $BASEDIR/$1 2> /dev/null
    fi

    if [ $# -eq 2 ]
    then
        cd $BASEDIR/$1/$2 2> /dev/null
    fi
    if [ $? -gt 0 ]; then
        local IFS='/'
        printf "No such location: $*\n"
	cd $currdir
	return 1
    fi
}



# chmod_remote Function

chmod_remote ()
{
	if [ "$#" -eq 0 -o "$#" -gt 4 ] ; then
		echo "Incorrect number of paremeters."
		echo "Usage: chmod_remote [server name] [username] [octal permissions] [filepath]"
		return $?
	else
		set server user ocperm filepath
		echo "ssh "$user"@"$server" chmod '"$ocperm"' ~//"filepath""
	fi
}
