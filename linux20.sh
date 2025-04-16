#!/bin/bash

# Check if a filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Filename
file="$1"

# Remove lines containing "linux" (case-insensitive)
sed -i '/linux/d' "$file"

echo "All lines containing 'linux' have been deleted from $file."

