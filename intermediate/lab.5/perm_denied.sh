#!/bin/bash
# Name: Javier Hernandez Requena
# File: perm_denied
# Date: November 28, 2021
# Desc: Uses a while loop that runs once every 10 seconds and shuts down after looping 6 times.
#	For each iteration, show the 10 most recent web log "Permission denied" errors created by
#	scripts that belong to users with home directories in /students


i=0
while [[ i -lt 6 ]]
do
	echo "#############################################################################"
	grep '/students/*' /var/www/logs/ssl_error_log | grep 'Permission denied' | tail -10
	sleep 10
	i=$((i+1))
done


