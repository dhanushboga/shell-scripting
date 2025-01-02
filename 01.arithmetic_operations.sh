#!/bin/bash

echo "it's time to do Arithmetic Operations using functions by passing arguments"

echo "Enter the first Number:" $1
echo "Enter the second Number:" $2

Arithmetic(){
    sum=$(($1+$2))
    echo "sum of $1 and $2 :" $sum
    
    sub=$(($1-$2))
    echo "sub 0f $1 and $2 :" $sub
    
    mul=$(($1*$2))
    echo "Mul of $1 and $2 : " $mul
    
    div=$(($1/$2))
    echo "Div of $1 and $2 : " $div
    
    mod=$(($1%$2))
    echo "Mod of $1 and $2 : " $mod

}

Arithmetic $1 $2

echo "wow it's completed the arithmetic operations for $1 and $2"

#01.arithmetic_operations.sh 7 9