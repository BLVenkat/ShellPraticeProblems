#!/bin/bash -x
#Program on Flip Coin
head=0;
tail=1;
win=11;

#variables
headWin=0;
tailWin=0;

#logic
while [[ $headWin -lt $win && $tailWin -lt $win ]]
do
	random=$(( $RANDOM % 2 ))
	case $random in 
		$head)
			(( headWin = headWin + 1 ))
			;;
		$tail)
			(( tailWin = tailWin + 1 ))
			;;
	esac
done
echo "$headWin"
echo "$tailWin"
