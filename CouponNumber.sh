#!/bin/bash -x

# --------------------------------------------------------------------------------------------------------------------
# <copyright file="CouponNumber.sh" name="Manish Reddy" company="Bridgelabz"></copyright>
# Problem Statement :-
#	 Find N Coupon Number's of M digits. 
# --------------------------------------------------------------------------------------------------------------------

#Inputs

read -p "Enter the Number of Coupon numbers to be generated:-  " N
read -p "Enter the length of Coupon number to be generated:-  " M

#Computation

while [[ $N -gt 0 ]]
do
	if [[ $M -eq 1 ]]
	then
		random=$(( $RANDOM % 10 ))
	fi
	if [[ $M -eq 2 ]]
	then
		random=$(( $RANDOM % 100 + 10 ))
	fi
	if [[ $M -eq 3 ]]
	then
		random=$(( $RANDOM % 1000 + 100 ))
	fi
	if [[ $M -eq 4 ]]
	then
		random=$(( $RANDOM % 10000 + 1000 ))
	fi
	if [[ $M -eq 5 ]]
	then
		random=$(( $RANDOM % 100000 + 10000 ))
	fi
	if [[ $M -eq 6 ]]
	then
		random=$(( $RANDOM % 1000000 + 100000 ))
	fi
	(( N = N - 1 ))
	echo "$random"
done
