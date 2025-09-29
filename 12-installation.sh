#!/bin/bash

# Instllation of mysql with root user or not

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "ERROR:: Please run this script with root privileges"
fi

