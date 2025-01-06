#!/bin/bash

file=long_file.txt

rev_content=$(cat $file | tr -d " \t\n\r" | tac )

for line in $rev_content
do
echo $line
done





