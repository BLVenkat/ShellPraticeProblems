#!/bin/bash -x

echo "Enter number of times you want to flip the coin"
read n

declare -A Coin

h=0

t=0

function NumTimes() {
	i=0
        while((i<n))
	do
	Flip
	(( i++ ))
	done
}

function Flip()  {
	value="HEAD"
	result=$((RANDOM%2))
	if (( result == 1 ))
	then
		value="HEAD"
		((h++))
	else
		value="TAIL"
		((t++))
	fi
	Coin[$(( i ))]=$value
}
NumTimes
echo "Total head $h and head% = $((h*100/((h+t))))%"

echo "Total tails $t and teails% = $((t*100/((h+t))))%"
echo "Toss results: [${Coin[@]}]"
