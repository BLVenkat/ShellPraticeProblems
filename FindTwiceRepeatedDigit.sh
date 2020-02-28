# --------------------------------------------------------------------------------------------------------------------
# <copyright file="FindTwiceRepeatedDigit.sh" name="Manish Reddy" company="Bridgelabz"></copyright>

# Problem Statement :-
#	 Take a range from 0 –100, find the digits that are repeated twice like 33, 77, etc and store them in an array
# --------------------------------------------------------------------------------------------------------------------

#!/bin/bash -x

#Function declaration

function findDigit(){
	startNumber=$1
	endNumber=$2
	count=0
	while [[ $startNumber -le $endNumber ]]
	do
		if (( $startNumber % 11 == 0 && $startNumber > 0))
		then
			digitsArray[ (( count++ )) ]=$startNumber
		fi
		(( startNumber = startNumber + 1 ))
	done
	echo ${digitsArray[@]}
}

#inputs

startRange=0;
endRange=100;

#Output

TwiceRepeatedDigitArray="$( findDigit $startRange $endRange )"
echo ${TwiceRepeatedDigitArray[@]}
