#!/bin/bash

# Below variables we are passing in this script
echo "================================================"

echo "All variables passing in this script:$@"
echo "All variables passing in this script:$*"
echo "Calling another script with bash..."
bash 03-variables.sh
echo "Script name is:$0"
echo "Current directory:$PWD"
echo "Who is running script:$USER"
echo "Home directory:$HOME"
echo "Process ID of this script is:$$"
sleep 50 &
echo "Process ID of last command in background is:$!"