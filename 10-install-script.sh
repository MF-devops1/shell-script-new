#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR: you must have sudo access to execute this script"
    exit 1
fi
dnf install mysqll -y

if [ $? -ne 0 ]
then 
echo "Installing MYSQL .... Failure"
exit 1
else

echo "Installing MYSQL .....Success"
fi 

dnf install git -y

if [ $? -ne 0 ]

echo "Installing git ....Failure"
exit 1
else

echo "Installing git ....Success"
fi
