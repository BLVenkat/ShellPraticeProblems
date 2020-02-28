#!/bin/bash -x

#Problem Statements: 1) To generate 10 random 3 digit numbers
#							2) Store these numbers into an array
#							3) To find the second largest and smallest number without sorting the array
#                    4) To find the second largest and smallest number sorting the array

#Constants
numOfElements=10;
counter1=0;
counter2=0;
firstLargest=1;
secondLargest=0;
firstSmallest=1000;
secondSmallest=1001;

#function to generate random 3 digit number and returns an array of random numbers
function createArray() {
	for (( i=0;i<$numOfElements;i++ ))
	do
		array[$i]=$(( 100+RANDOM%900 ))
	done

	getSecondLargestAndSmallestNum ${array[@]}
	getSecondLargestAndSmallestNumBySorting ${array[@]} 
}

#function to find the second largest and second smallest element without sorting
function getSecondLargestAndSmallestNum() {
	for i in "$@"; do
		arr[(( counter1++ ))]=$i	
	done
	echo "array in func  : ${arr[@]}" 
	for(( j=0;j<$numOfElements;j++ ))
	do
		if (( ${arr[j]} > $firstLargest ));
		then
			secondLargest=$firstLargest;
			firstLargest=${arr[j]};
		elif [[ ${arr[j]} -gt $secondLargest && ${arr[j]} -ne $firstLargest ]]
		then
			secondLargest=${arr[j]}
		fi

		if (( ${arr[j]} < $firstSmallest ));
	   then
			secondSmallest=$firstSmallest;
			firstSmallest=${arr[j]};
		elif [[ ${arr[j]} -lt $secondSmallest && ${arr[j]} -ne $firstSmallest ]]
		then
			secondSmallest=${arr[j]}	
		fi
	done
	echo "the second largest element without sorting is : $secondLargest"
	echo "the second smallest element without sorting is : $secondSmallest"
}

#function to find the second largest and second smallest element by sorting the array

function getSecondLargestAndSmallestNumBySorting() {
	for i in "$@"; do
		arr[(( counter2++ ))]=$i	
	done
	for(( i=0;i<$numOfElements;i++ )) 
	do
		for (( j=0;j<$(( numOfElements-i-1 ));j++ ))
		do
			if (( ${arr[j]} > ${arr[$((j+1))]} ));
         then
         	temp=${arr[j]};
            arr[$j]=${arr[$((j+1))]};
            arr[$((j+1))]=$temp;
         fi
      done    
	done
	echo "the second smallest number after sorting is ${arr[1]}"
	echo "the second largest number after sorting is ${arr[$(( numOfElements-2 ))]}"
}

createArray
