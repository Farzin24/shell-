#!/bin/bash

echo "Prime numbers between 1 and 100 are:"

for ((num=2; num<=100; num++))
do
    is_prime=1
    for ((i=2; i*i<=num; i++))
    do
        if ((num % i == 0)); then
            is_prime=0
            break
        fi
    done
    if ((is_prime == 1)); then
        echo -n "$num "
    fi
done

echo

