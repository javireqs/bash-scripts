#!/bin/bash
# Name: Javier Hernandez Requena
# File: timeod
# Date: November 22, 2021
# Desc: displays the time of day in a.m. or p.m. notation rather than in 24-hour clock time


day=$(date | cut -d' ' -f1)
month=$(date | cut -d' ' -f2)
digit=$(date | cut -d' ' -f3)
hour=$(date | cut -c12-13)
minute=$(date | cut -c15-16)
second=$(date | cut -c18-19)
timezone=$(date | cut -d' ' -f5)
year=$(date | cut -d' ' -f6)
twelve=$(($hour - 12))


if [ "$hour" -gt 13 ]
then
	echo "$day, $month $digit, $year  $twelve:$minute:$second PM"
else
	echo "$day, $month $digit, $year  $hour:$minute:$second AM"
fi
