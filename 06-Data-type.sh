#!/bin/bash
FIRST=$1
SECOND=$2

DATE=$(date)
echo "script executed at :$DATE"

SUM=$(($FIRST+$SECOND))

echo "sum of $FIRST and $SECOND is :$SUM" 