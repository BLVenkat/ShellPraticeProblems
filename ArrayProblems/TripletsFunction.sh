#Problem statement              :- Write a program to show sum of three integer adds to zero.
#Output                         :- Prints the Three Numbers of array whose sum is 0.
#file                           :- TripletsFunction.sh

#!/bin/bash -x

echo "Enter the elements in array separated by white-space : "
read -a ARRAY
ARRAY_LENGTH=${#ARRAY[@]}

# function to loop through array for third index
# params - firstIndex, secondIndex
function calculate_for_third_index() {
	local firstIndex=$1
	local secondIndex=$2
	for (( thirdIndex = (( secondIndex + 1 )); thirdIndex < ARRAY_LENGTH; thirdIndex++ ))
	do
		local firstElement=${ARRAY[$firstIndex]}
		local secondElement=${ARRAY[$secondIndex]}
		local thirdElement=${ARRAY[$thirdIndex]}
		if [ $(( $firstElement + $secondElement + $thirdElement )) -eq 0 ]
		then
			echo $firstElement $secondElement $thirdElement
		fi
	done
}

# function to loop through array for second index
# params - firstIndex 
function calculate_for_second_index() {
	local firstIndex=$1
	for (( secondIndex = (( firstIndex + 1 )); secondIndex < (( ARRAY_LENGTH - 1 )); secondIndex++ ))
	do
		calculate_for_third_index $firstIndex $secondIndex
	done
}

# function to find triplets
function find_triplets() {
	for (( firstIndex = 0; firstIndex < ARRAY_LENGTH - 2; firstIndex++ ))
	do
		calculate_for_second_index $firstIndex
	done
}

#main
find_triplets
