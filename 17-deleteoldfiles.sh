#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-roboshop"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE=$LOGS_FOLDER/$SCRIPT_NAME.log

mkdir -p $LOGS_FOLDER
echo "script started executed at: $(date)" | tee -a $LOG_FILE

source_dir=/home/ec2-user

if [ ! -d $source_dir ]; then
    echo -e "error:: $source_dir is doesn't exist"
    exit 1
fi

deleteoldfiles=$( find $source_dir -type f -name "*.log" -size +50c -mtime +14)
 
while  IFS= read -r filepath; do

    echo "Processing line: $filepath"

done <<<$deleteoldfiles