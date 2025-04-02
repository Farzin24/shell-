#!/bin/bash

echo -n "Enter three numbers: "
read a b c

if [[ $((a + b)) -gt $c && $((a + c)) -gt $b && $((b + c)) -gt $a ]]; then
    echo "$a, $b, and $c can form a triangle."
else
    echo "$a, $b, and $c cannot form a triangle."
fi
