#!/bin/bash

# Check if filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

# Check if file exists and is a regular file
if [ ! -f "$filename" ]; then
    echo "File '$filename' does not exist or is not a regular file."
    exit 1
fi

# Initialize counters
line_count=0
word_count=0

# Read the file line by line
while IFS= read -r line; do
    ((line_count++))
    # Count words in the current line
    for word in $line; do
        ((word_count++))
    done
done < "$filename"

# Output the results
echo "Lines: $line_count"
echo "Words: $word_count"

