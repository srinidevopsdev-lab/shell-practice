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

is_prime=true # Flag to track primality

# Iterate from 2 up to half of the number
for (( i=2; i*i<=$num; i++ )); do
    if (( num % i == 0 )); then
        is_prime=false
        break
    fi
done

if [ "$is_prime" = true ]; then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi