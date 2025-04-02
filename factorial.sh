#!/bin/bash

factorial() {
    if [[ $1 -le 1 ]]; then
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
    fi
}

echo -n "Enter a number: "
read num

if [[ $num -lt 0 ]]; then
    echo "Factorial is not defined for negative numbers."
else
    echo "Factorial of $num is: $(factorial $num)"
fi

