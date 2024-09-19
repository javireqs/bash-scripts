#!/bin/bash
# Name: Javier Hernandez Requena
# File: run_tests
# Date: November 22, 2021
# Desc: runs valid, timeod, mysed, and itsayes


echo "Valid: "
./valid _goodname
./valid 123badname

echo "Timeod: "
./timeod

echo "Mysed: "
wc -l oliver.txt
./mysed '1,10d' oliver.txt
wc -l oliver.txt

echo "Itsayes: "
./itsayes yes
echo $?
./itsayes no
echo $?
