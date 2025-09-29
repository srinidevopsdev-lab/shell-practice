#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <directory> <old_string> <new_string>"
    exit 1
fi

DIRECTORY="$1"
OLD_STRING="$2"
NEW_STRING="$3"

# Check if the directory exists
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory '$DIRECTORY' not found."
    exit 1
fi

echo "Replacing all occurrences of '$OLD_STRING' with '$NEW_STRING' in files within '$DIRECTORY'..."

# Find all regular files in the specified directory and its subdirectories
# Then, use sed to perform in-place replacement
find "$DIRECTORY" -type f -print0 | xargs -0 sed -i "s/${OLD_STRING}/${NEW_STRING}/g"

echo "Replacement complete."