#!/bin/bash

echo "enter the file Name :"
read file

word=$(echo -n "$file" | wc -w)
echo "The total number of words is $word"