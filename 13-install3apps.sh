#!/bin/bash

# Instllation of mysql with root user or not

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "ERROR:: Please run this script with root privileges"
    exit 1 # failure is other than 0
else   
    echo "Running the script with ROOT preveliges...."
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "FAILURE :: Instllation of MySql is failed ...."
    exit 1
else
    echo "SUCCESS :: Instllation of MySql is success ...."
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "FAILURE :: Instllation of Nginx is failed ...."
    exit 1
else
    echo "SUCCESS :: Instllation of Nginx is success ...."
fi

dnf install python3 -y

if [ $? -ne 0 ]; then
    echo "FAILURE :: Instllation of Python is failed ...."
    exit 1
else
    echo "SUCCESS :: Instllation of Python3 is success ...."
fi

