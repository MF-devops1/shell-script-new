#!/bin/bash

MSG="SCRIPT1"
GREET="Hi from SCRIPT-1"
source ./21-script-2.sh

echo "Hello from: $MSG"
echo "A value: $A"

# sh 21-script-2.sh


# if we use source command, second script variable values also we can access in script 1