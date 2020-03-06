#!/bin/bash -x

#CONSTANTS OF PROGRAM
IS_HEAD=0;
IS_TAIL=1;

#VARIABLES OF PROGRAM
heads=0;
tails=0;
headsPercentage=0;
tailPercentage=0;


declare -A singlet=( ["H"]=$heads ["T"]=$tails )

read -p "Enter how many times you want flip coin" times

for ((play=0; play<$times; play++ ))
do
	toss=$((RANDOM%2));

	case $toss in
		$IS_HEAD)
			(( heads++ ))
			singlet["H"]="$heads"
			;;
		$IS_TAIL)
			(( tails++ ))
			singlet["T"]="$tails"
			;;
	esac
done

headsPercentage=$((echo scale=2 ; echo "${singlet[H]}"/$times*100)  | bc )
tailsPercentage=$((echo scale=2 ; echo "${singlet[T]}"/$times*100)  | bc )
