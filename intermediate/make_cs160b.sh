#!/bin/bash
# Name: JHernandezRequena
# File: make_cs160b.sh
# Desc: Creates the cs160b directory, eight sub-directories, and 16 files

# Go to home directory
cd
# Create the cs160b directory
mkdir cs160b

# Go into new cs160b directory; create the 8 weekly directories.
cd cs160b
mkdir {1..8}

# Create the weekly files
for i in {1..8}
do
    touch $i/exercise_wk${i}.sh
    touch $i/assignment)wk${i}.sh
done

# Return to parent directory
cd ..

# Display the directory and files in cs160b
tree cs160b