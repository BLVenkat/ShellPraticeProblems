#!/bin/bash -x

# --------------------------------------------------------------------------------------------------------------------
# <copyright file="FindTwiceRepeatedDigitFunction.sh" name="Manish Reddy" company="Bridgelabz"></copyright>
# Problem Statement :-
#	 Take a range from 0 –100, find the digits that are repeated twice like 33, 77, etc and store them in an array
# --------------------------------------------------------------------------------------------------------------------

#Function declaration

function findDigit(){
	startNumber=$1
	if (( $startNumber % 11 == 0 && $startNumber > 0 ))
	then
		echo $startNumber
	fi
}

#inputs

startRange=0;
endRange=100;

#Output

count=0
while [[ $startRange -le $endRange ]]
do
	repeatedDigit="$( findDigit $startRange )"
	TwiceRepeatedDigitArray[ (( count++ )) ]=$repeatedDigit
	(( startRange = startRange + 1 ))
done
echo ${TwiceRepeatedDigitArray[@]}
