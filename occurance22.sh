#!/bin/bash

# Check if minimum required arguments are passed
if [ $# -lt 2 ]; then
  echo "Usage: $0 <word> <file1> [file2 ... fileN]"
  exit 1
fi

word=$1
shift  # Shift to get the list of files

total=0

echo "Counting occurrences of word: '$word'"

for file in "$@"; do
  if [ ! -f "$file" ]; then
    echo "File not found: $file"
    continue
  fi

  count=$(grep -o -w "$word" "$file" | wc -l)
  echo "$file: $count"
  total=$((total + count))
done

echo "Total occurrences: $total"

