#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR: you must have sudo access to execute this script"
    exit 1
fi
dnf list installed mysql 
if [ $? -ne 0 ]
then 

dnf install mysql -y

if [ $? -ne 0 ]
then 
echo "Installing MYSQL .... Failure"
exit 1
else
echo "Installing MYSQL .....Success"
fi 
else
echo "Mysql is already ....Installed"

fi
dnf list installed git 

if [ $? -ne 0 ]

then 

dnf install git -y

if [ $? -ne 0 ]
then
echo "Installing git ....Failure"
exit 1
else

echo "Installing git ....Success"
fi

else 
echo " Git is already ....Installed"

fi