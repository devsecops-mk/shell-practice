#!/bin/bash

# Instllation of mysql with root user or not

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "ERROR:: Please run this script with root privileges"
else   
    echo "Running the script with ROOT preveliges...."
fi

dnf install mysql -y

if [ $? -eq 0 ]; then
    echo "ERROR :: Installation of MySql is success ...."
else
    echo "FAILURE :: Instllation of MySql is failed ...."
fi

