#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo "Error::Please run this script as root user"
    exit 1 # failure is othere than 0 Means it will stop here dont run furthur
fi

VALIDATE () {
    if [ $1 -ne 0 ]; then
        echo "Error: $2 installation is $R failure $N"
        exit 1 # 1 for failure
    else
        echo "$2 installation is $G successful $N"
    fi
}

dnf list installed mysql #this command checks installed package
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "Mysql"
else
    echo -e "Mysql is already exist...  $Y skipping $N"
fi


dnf list installed nginx #this command checks installed package
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "Nginx is already exist....  $Y skipping $N"
fi


dnf list installed python3 #this command checks installed package
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e "python3 is already exist...  $Y skipping $N"
fi


