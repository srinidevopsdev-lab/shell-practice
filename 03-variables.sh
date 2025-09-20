#!/bin/bash

# DATE=$(date +%s)

START_DATE=$(date +%s)

sleep 10

END_DATE=$(date +%s)

TOTAL_TIME=$(($START_DATE-$END_DATE))

echo "Today date is: $TOTAL_TIME"