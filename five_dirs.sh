#!/bin/bash

mkdir five

for ((i=1;i<=5;i++))
do
   mkdir five/dir$i
   for ((j=1;j<=4;j++))
   do
     touch five/dir$i/file$j
     for ((m=1;m<=j;m++))
     do 
       echo "$j">> five/dir$i/file$j
     done
   done
done
