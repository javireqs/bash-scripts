#!/bin/bash
# Name: Javier Requena
# File: home
# Date: November 15, 2021
# Desc: Takes the name of a Hills user as its single argument and prints that user's home directory

echo | cat /etc/passwd | grep $1 | cut -d: -f6
