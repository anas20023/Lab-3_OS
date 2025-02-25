#!/bin/bash

read -p "Enter an word :" str

#echo ${#str}
is_palindrome(){
    local strl=$1
    local s=${#strl}
    #echo $s
   # echo $strl
    for((i=0;i<s/2;i++)); do
       # echo "${strl[i]}"

       l="${strl:i:1}"
       r="${strl:s-i-1:1}"

       #echo $l
       #echo $r
        if [[ "$l" != "$r" ]];then
            echo "Not a Palindrome"
            return
        fi
    done
    echo "Palindrome"
    return
}
is_palindrome "$str"