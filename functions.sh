#!/bin/bash

echo "it's time to do addition using functions"

echo "Enter the first Number:" $1
echo "Enter the second Number:" $2

sum(){
    sum=$(($1+$2))
    echo "sum of $1 and $2 :" $sum
}

sum $1 $2