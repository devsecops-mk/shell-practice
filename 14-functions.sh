#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR :: Please run the script with root previleges ..."
    exit 1 # failure is other than 0
fi

VALIDATE() { # functions received inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo "ERROR ::  Installing $2 is failure"
        exit 1
    else
        echo "Installing $2 is success"
    fi
}

dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "Python3"

dnf install zip -y
VALIDATE $? "Zip"

dnf install smb -y
VALIDATE $? "smb"