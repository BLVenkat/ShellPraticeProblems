#!/bin/bash -x
#Program on Flip Coin
head=0;
tail=1;
headWin=0;
tailWin=0;
while [[ $headWin -lt 11 && $tailWin -lt 11 ]]
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
