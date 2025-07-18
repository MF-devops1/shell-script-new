#!/bin/bash 

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2....FAILURE"
        exit 1
    else
        echo "$2....Success"

    fi
}

if [ $USERID -ne 0 ]
then 
    echo "Error::you must have sudo access to execute this script"
    exit 1
fi

dnf list installed mysql 

if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE  $? "Installing MYSQL"

else
    echo " MYSQL is already...Installed"
fi

dnf list installed git 

if [ $? -ne 0 ]
then
   dnf install git -y 
   VALIDATE $? "Installing GIT"

else
    echo "GIT is already ... INSTALLED"
fi 

