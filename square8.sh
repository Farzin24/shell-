#!/bin/bash

read -p "Enter a number: " n
sum=0
i=1

while [ $i -le $n ]
do
    sum=$((sum + i * i))
    i=$((i + 1))
done

echo "Sum of squares of first $n numbers is: $sum"
