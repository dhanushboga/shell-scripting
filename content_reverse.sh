#!/bin/bash

file=long_file.txt

rev_content=$(cat $file | tac )

while read -r line;
do 
  echo $rev_content
done < $file








