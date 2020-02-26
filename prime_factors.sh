#!/bin/bash 

read -p  "enter a number to find prime factor: " number

for ((i=2;i<$number; i++ ))
do
  if [ `expr $number % $i` -eq 0 ]
  then
      factor=$i
      isPrimeFactor=0
  for (( j=2;j<=`expr $factor / 2`; j++ ))
  do
      if [ `expr $factor % $j` -eq 0 ]
      then
      isPrimeFactor=1
      break
      fi
  done
  if [ $isPrimeFactor -eq 0 ]
  then
    echo " $factor "
  fi
  fi
  done

