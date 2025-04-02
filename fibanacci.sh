#!/bin/bash

fibonacci() {
    if [[ $1 -le 1 ]]; then
        echo $1
    else
        echo $(( $(fibonacci $(( $1 - 1 ))) + $(fibonacci $(( $1 - 2 ))) ))
    fi
}

echo -n "Enter the number of terms: "
read num

if [[ $num -le 0 ]]; then
    echo "Please enter a positive integer."
else
    echo "Fibonacci sequence up to $num terms:"
    for ((i=0; i<num; i++)); do
        echo -n "$(fibonacci $i) "
    done
    echo
fi

