#!/bin/bash

actual_word=$1
updated_word=$2
G="\e[32m"
N="\e[0m"

file="\Users\Bogad\devops\repos\shell-scripting\long_file.txt"

updated_file=$(sed -i "s/$actual_word/$updated_word/g" $file)
cat $file
echo -e $G "Word replacement completed" $N

#sh word_replace.sh "you" "am"
