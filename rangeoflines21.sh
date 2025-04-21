#!/bin/bash

# Check if correct number of arguments are passed
if [ $# -ne 3 ]; then
  echo "Usage: $0 <filename> <start_line> <end_line>"
  exit 1
fi

filename=$1
start=$2
end=$3

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi

# Print the specified range using sed
sed -n "${start},${end}p" "$filename"

