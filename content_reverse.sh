#!/bin/bash

file=long_file.txt

rev_content=$(cat $file | rev )

for line in $rev_content
do
echo $line
done





