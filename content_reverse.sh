#!/bin/bash

file=long_file.txt

rev_content=$(cat $file | rev | tac )

for line in $rev_content
do
echo $line
done





