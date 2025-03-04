#!/bin/bash

# shellcheck disable=SC2162
read n
isLeapYear(){
    local yr=$1
    #echo "$yr"
    if (( yr % 400 == 0 || (yr % 4 == 0 && yr % 100 != 0) )); then
        echo "Leap Year"
    else
        echo "Not Leap Year"  
    fi
}
isLeapYear "$n"