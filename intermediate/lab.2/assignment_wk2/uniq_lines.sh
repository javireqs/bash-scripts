#!/bin/bash
# Name: Javier Hernandez Requena
# File: uniq_lines
# Desc: assigns the unique lines in a phonebook.txt to the variable named namelist and then prints namelist

namelist=$(sort /users/dputnam/public_html/phonebook.txt | uniq)

echo $namelist
