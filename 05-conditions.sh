#!/bin/bash

# Given no checking
NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo "Given number $NUMBER is less than 10"
     
elif [ $NUMBER -eq 10 ]; then
    echo "Given number $NUMBER is equal to 10"

elif [ $NUMBER -gt 10 ]; then
    echo "Given number $NUMBER is greater than 10"
fi