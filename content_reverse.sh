#!/bin/bash

file=long_file.txt

rev_content=$(cat $file | tac )

echo "The reverse content is : $rev_content"




