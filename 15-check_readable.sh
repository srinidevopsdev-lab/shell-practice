#!/bin/bash

# Check if a filename argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <filename_or_path>"
  exit 1
fi

filename="$1"

# Check if the file exists and is readable
if [ -f "$filename" ] && [ -r "$filename" ]; then
  echo "'$filename' is readable."
elif [ -f "$filename" ]; then
  echo "'$filename' exists but is not readable."
else
  echo "'$filename' does not exist or is not a regular file."
fi