#Problem statement		:- Think of a magic Number and ask N number of questions to find it.
#Output						:- Prints the Magic Number. 
#file							:- MagicNumber.sh

#!/bin/bash -x

# constants
YES=Y
NO=N

# variables
lowerLimit=0
upperLimit=100
magicNum=$(( $(( $lowerLimit + $upperLimit )) / 2 ))

read -p "Think of a magic number in a range of $lowerLimit-$upperLimit and press any key!"

while [[ $lowerLimit -lt $upperLimit ]]
do
	read -p "Is the number greater than $magicNum? (Y or N) : " isGreaterThanMagicNum

	# comparing ignore case by capitalizing user input
	if [[ ${isGreaterThanMagicNum^^} == $YES ]]
	then
		lowerLimit=$(( $magicNum + 1 ))
	elif [[ ${isGreaterThanMagicNum^^} == $NO ]]
	then
		upperLimit=$magicNum
	else
		echo "Invalid Input! Please try again..."
	fi

	magicNum=$(( $(( $lowerLimit + $upperLimit )) / 2 ))
done

echo "The Magic Number is : $magicNum"
