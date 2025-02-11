#!/bin/bash

read -r -p "Enter a Number : " n
for((cnt=1 ; cnt<=n ; cnt++))
do 
	for((j=1 ; j<=cnt ; j++))
	do 
		echo -n "*"
	done 
	echo ""
done
for((cnt=1 ; cnt<=n ; cnt++))
do 
	for((j=n-cnt ; j>=1 ; j--))
	do 
		echo -n "*"
	done
	echo ""
done