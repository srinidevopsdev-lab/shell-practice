#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE=$LOGS_FOLDER/$SCRIPT_NAME.log
mkdir -p $LOGS_FOLDER
echo "script started executed at: $(date)" | tee -a $LOG_FILE
if [ $USERID -ne 0 ]; then
    echo "Error::Please run this script as root user"
    exit 1 # failure is othere than 0 Means it will stop here dont run furthur
fi

VALIDATE () {
    if [ $1 -ne 0 ]; then
        echo "Error: $2 installation is $R failure $N" | tee -a $LOG_FILE
        exit 1 # 1 for failure
    else
        echo -e "$2 installation is $G successful $N" | tee -a $LOG_FILE
    fi
}

for package in $@ 
do
    # check package is already installed or not
    dnf list installed $package &>>LOG_FILE

    #if package is installed exit code is 0 not eq 0 not installed
    if [ $? -ne 0 ]; then
        dnf install $package -y &>>LOG_FILE
        VALIDATE $? $package
    else 
        echo -e "$package is already installed ... $Y skipping $N"
    fi
done
