#!/bin/bash

for i in 1..10; do
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