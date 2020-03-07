#!/bin/bash -x

#Problem-statement:-	Simulates a Gambler who starts with a stake and
#							bets every game to win or loose some stake. Being a Calculative
#							Gambler exits if the Stake reaches a high or a low limit.
#use-case3			:- As a Calculative Gambler if won or lost 50% of the stake, would resign for the day.

#constants
STAKE_PER_DAY=100
BET=1
WIN=1
LOSS=0
MIN_LIMIT=50
MAX_LIMIT=150

#varibles
cash=$STAKE_PER_DAY

while [[ $cash -gt $MIN_LIMIT && $cash -lt $MAX_LIMIT ]]
do 
	random=$(( RANDOM%2))
		case $random in 
			$WIN) ((cash +=BET)) ;;
			$LOSS) ((cash -=BET)) ;;
			*);;
		esac
done


echo "Cash =$cash"
