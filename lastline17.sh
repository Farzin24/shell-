#!/bin/bash

# Check if filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "File '$filename' does not exist or is not a regular file."
    exit 1
fi

# Read file into an array
mapfile -t lines < "$filename"

# Print lines in reverse order
for (( i=${#lines[@]}-1; i>=0; i-- )); do
    echo "${lines[i]}"
done

