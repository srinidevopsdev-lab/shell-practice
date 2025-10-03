#!/bin/bash

user_id=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-practice"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE=$LOGS_FOLDER/$SCRIPT_NAME.log

if [ $user_id -ne 0 ]; then
    echo -e "error:: Run this script as root user"
    exit 1
fi

mkdir -p $LOGS_FOLDER
echo "script started executed at: $(date)" | tee -a $LOG_FILE

source_dir="/var/log/shell-practiceu"



if [ ! -d $source_dir ]; then
    echo -e "error:: $source_dir is doesn't exist"
    exit 1
fi

deleteoldfiles=$( find $source_dir -type f -name "*.log" -mtime +14)
 
while  IFS= read -r filepath; do

    echo "Processing line: $filepath"

done <<<$deleteoldfiles