#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 10; do
  if [ $i -eq 5 ]; then
    echo "Breaking the loop at $i"
    break
  fi
  if [ $i -eq 3 ]; then
    echo "Skipping iteration $i"
    continue
  fi
  echo "Iteration number: $i"
done