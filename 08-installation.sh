#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]; then
    echo "Error::Please run this script as root user"
    exit 1 # failure is othere than 0 Means it will stop here dont run furthur
fi

VALIDATE () {
    if [ $1 -ne 0 ]; then
        echo "Error: $2 installation is failure"
        exit 1 # 1 for failure
    else
        echo "$2 installation is successful"
    fi
}
    
dnf install mysql -y
VALIDATE $? "Mysql"

dnf install mysql -y
VALIDATE $? "Nginx"

dnf install mysql -y
VALIDATE $? "Mongodb"
    

