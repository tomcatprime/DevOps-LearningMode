#!/bin/bash

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
    echo "We have entered into IF block"
    sleep 3
    echo "Your number $NUM is greater than 100"
    echo
    sleep 3
    date
else
    echo "We have entered into ELSE block"
    sleep 3
    echo "Your number $NUM is not greater than 100"
    date
fi

echo "Done"