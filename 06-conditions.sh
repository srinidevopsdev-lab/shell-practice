#1/bin/bash

# Even and Odd number finding

echo "Please enter the number::"

read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "The given number $NUMBER is Even number"
else 
    echo "The given number $NUMBER is Odd number"
fi
