#!/bin/bash

read -r -p "Enter a Year: " yr

#echo $yr

 if(( yr%400==0 || yr%4==0 ));
 then
 	if((yr % 100 !=0));
 	then 
 		echo "Leap Year"
 	else
 		echo "Not Leap Year"
 	fi 
 else
 echo "Not Leap Year"
 
 fi