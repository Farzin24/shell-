#!/bin/bash

# Function to calculate factorial
factorial() {
  local n=$1
  local fact=1

  for (( i=2; i<=n; i++ ))
  do
    fact=$((fact * i))
  done

  echo $fact
}

# Function to calculate nCr
ncr() {
  local n=$1
  local r=$2

  nf=$(factorial $n)
  rf=$(factorial $r)
  nrf=$(factorial $((n - r)))

  result=$((nf / (rf * nrf)))
  echo $result
}

# Main Script
read -p "Enter value of n: " n
read -p "Enter value of r: " r

if [ "$r" -gt "$n" ]; then
  echo "Invalid input: r should be less than or equal to n"
  exit 1
fi

echo "nCr = $(ncr $n $r)"

