#!/bin/bash

echo "Enter a number:"
read num

# Handle special cases
if [ "$num" -le 1 ]; then
    echo "$num is not a prime number."
    exit 0
elif [ "$num" -eq 2 ]; then
    echo "$num is a prime number."
    exit 0
fi