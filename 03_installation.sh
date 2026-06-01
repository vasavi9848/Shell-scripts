#!/bin/bash

USER_ID=$(id -u)
if [ "$USER_ID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi 

#Install Mysql server

dnf list installed mysql
if [ $? -ne 0 ];then
    echo "mysqly alreay installed----skipping"
else    
    echo " installing myaql"
    dnf install mysql -y
    if [ $? -ne 0 ];then
        echo "mysql installation failed"
        exit1
    else
        echo "install mysql successfully"
    fi
fi
    