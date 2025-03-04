#!/bin/bash

read -r -p "Enter a Year: " yr

is_leap_year() {
    local year=$1
    if (( year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) )); then
        return 0 
    else
        return 1  
    fi
}


if is_leap_year "$yr"; then
    echo "Leap Year: $yr"
else
    
    up=$yr
    down=$yr
    while true; do
        ((up++))
        ((down--))
        
        if is_leap_year "$down"; then
            echo "Nearest Leap Year: $down"
            break
        elif is_leap_year "$up"; then
            echo "Nearest Leap Year: $up"
            break
        fi
    done
fi
