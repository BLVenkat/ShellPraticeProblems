#!/bin/bash 

read -p "enter prime number range : " RANGE

for (( i=2; i<=$RANGE; i++ ))
do
	let limit=$i-1
	let primeCheck=0

	for (( j=2; j<=$limit; j++ ))
	do
		let isPrime=$(($i % $j ))
			if [ $isPrime -eq 0 ]
			then
				((primeCheck++))
			break
		fi
	done
		if [ $primeCheck -eq 0 ]
		then
			echo "$i"
		fi
done
