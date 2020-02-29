#Problem statement              :- Write a program to show sum of three integer adds to zero.
#Output                         :- Prints the Three Numbers of array whose sum is 0.
#file                           :- Triplets.sh

#!/bin/bash -x

echo "Enter the elements in array separated by white-space : "
read -a ARRAY
ARRAY_LENGTH=${#ARRAY[@]}

# calculate triplets 
# params - firstIndex, secondIndex
function calculate_triplets() {
	local firstIndex=$1
	local secondIndex=$2
	for (( thirdIndex = (( secondIndex + 1 )); thirdIndex < ARRAY_LENGTH; thirdIndex++ ))
	do
		firstElement=${ARRAY[$firstIndex]}
		secondElement=${ARRAY[$secondIndex]}
		thirdElement=${ARRAY[$thirdIndex]}
		if [ $(( $firstElement + $secondElement + $thirdElement )) -eq 0 ]
		then
			echo $firstElement $secondElement $thirdElement
		fi
	done
}

# function to loop through array for second index
# params - firstIndex 
function repeat_for_second_index() {
	local firstIndex=$1
	for (( secondIndex = (( firstIndex + 1 )); secondIndex < (( ARRAY_LENGTH - 1 )); secondIndex++ ))
	do
		calculate_triplets $firstIndex $secondIndex
	done
}

#main
for (( firstIndex = 0; firstIndex < ARRAY_LENGTH - 2; firstIndex++ ))
do
	repeat_for_second_index $firstIndex
done
