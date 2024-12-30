#!/bin/bash

echo "it's time to do addition using functions"

echo "Enter the first Number:" $1
echo "Enter the second Number:" $2

sum(){
    sum=$(($1+$2))
    echo "sum of $1 and $2 :" $sum
}

sum $1 $2

sub(){
    sub=$(($1-$2))
    echo "sub 0f $1 and $2 :" $sub
}

sub $1 $2