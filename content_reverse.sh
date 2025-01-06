#!/bin/bash

file=long_file.txt

rev_content=$(cat $file | tac )

echo $rev_content









