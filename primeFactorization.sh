#!/bin/bash -x

#Problem-statement:-	The Prime Factorization Program to store all the Prime Factors of a
#							number n into an array and finally display the output.
#Input				:-	Take number from user.
#Logic				:-	Calculate prime factor of number and store into array.
#Output				:	Display prime factors of number.

#variables
counter=0

read -p "Enter number to find out prime factor = " number
for (( i=2; i<=$number; i++ ));do
    while [ $(($number%$i)) == 0 ];do
        array[((counter++))]=$i
        number=$((number/$i))
    done
done	
echo "${array[@]}"

