#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Number of arguments: $#"
echo "All arguments as a single string: $*"
echo "All arguments as separate strings: $@"

# Execute a command and check its exit status
ls non_existent_file
echo "Exit status of last command: $?"

echo "Current shell PID: $$"