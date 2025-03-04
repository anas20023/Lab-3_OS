#!/bin/bash

# shellcheck disable=SC2162
read  -p "Enter a Number: " n
#echo $n
isPrime(){
    local num=$1

    if((num<2));then
        echo "Not Prime"
        return
    fi

    for((i=2; i*i<=num;i++)); do
       # echo "$i" 
        if((num%i==0)); then
            echo "Not a Prime Number"
            return 
        fi
    done
    
    echo "Prime Number"
    return 

}
isPrime $n