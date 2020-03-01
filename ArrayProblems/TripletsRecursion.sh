#Problem statement              :- Write a program to show sum of three integer adds to zero.
#Output                         :- Prints the Three Numbers of array whose sum is 0.
#file                           :- TripletsRecursion.sh

#!/bin/bash -x

echo "Enter the elements in array separated by white-space : "
read -a ARRAY

#Constants
FALSE=0
TRUE=1
ARRAY_LENGTH=${#ARRAY[@]}

#variables
startIndex=0

# function for recursive call with third pointer to search through the array
# params - firstIndex, secondIndex, thirdIndex
search_third_index() {
	local firstIndex=$1
	local secondIndex=$2
	local thirdIndex=$3 
	if [[ $thirdIndex -eq $ARRAY_LENGTH ]]										#base condition
	then
		return
	fi

	local firstElement=${ARRAY[$firstIndex]}
	local secondElement=${ARRAY[$secondIndex]}
	local thirdElement=${ARRAY[$thirdIndex]}
		
	# condition for checking sum of three elements equals to zero
	if [[ $(( $firstElement + $secondElement + $thirdElement )) -eq 0 ]]
	then
		echo $firstElement $secondElement $thirdElement
	fi 
	
	(( thirdIndex++ ))
	search_third_index $firstIndex $secondIndex $thirdIndex				#recursive call
}

# function for recursive call with second pointer to search through the array
# params - firstIndex, secondIndex, thirdIndex
search_second_index() {
	local firstIndex=$1
	local secondIndex=$2
	if [[ $secondIndex -eq $(( $ARRAY_LENGTH - 1 )) ]]						#base condition
	then
		return
	fi

	local thirdIndex=$(( $secondIndex + 1 ))
	search_third_index $firstIndex $secondIndex $thirdIndex
	
	(( secondIndex++ ))
	search_second_index $firstIndex $secondIndex								#recursive call
}

# function for recursive call with first pointer to search through the array
# params - firstIndex, secondIndex, thirdIndex
search_first_index() {
	local firstIndex=$1
	if [[ $firstIndex -eq $(( $ARRAY_LENGTH - 2 )) ]]						#base condition
	then
		return
	fi
	
	local secondIndex=$(( $firstIndex + 1 ))
	search_second_index $firstIndex $secondIndex

	(( firstIndex++ ))
	search_first_index $firstIndex												#recursive call
}

#main
search_first_index $startIndex
