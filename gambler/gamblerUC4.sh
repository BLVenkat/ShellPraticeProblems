#!/bin/bash -x

#Problem-statement:-	Simulates a Gambler who starts with a stake and
#							bets every game to win or loose some stake. Being a Calculative
#							Gambler exits if the Stake reaches a high or a low limit.
#use-case4			:- After 20 days of playing every day would like to know the total amount won or lost.


#constants
STAKE_PER_DAY=100
BET=1
WIN=1
LOSS=0
MIN_LIMIT=50
MAX_LIMIT=150
NUMBER_OF_DAYS=20

#varibles
per_day_win=0
per_day_loss=0
days=0
total_amount=0
while [[ $days -lt $NUMBER_OF_DAYS ]]
do
	cash=$STAKE_PER_DAY
	while [[ $cash -gt $MIN_LIMIT && $cash -lt $MAX_LIMIT ]]
	do 
		random=$(( RANDOM%2))
			case $random in 
				$WIN) ((cash +=BET))
						((per_day_win +=BET)) 
						echo "win = $per_day_win"
						echo "cash in win = $cash" ;;
				$LOSS) ((cash -=BET))
							((per_day_loss +=BET))
						echo "LOSS = $per_day_loss"
					   echo "cash in loss = $cash" ;;
				*);;
			esac
	done
	((days+=1))
	((total_amount +=cash))
	echo "cash =$cash"
done
echo "total amount = $total_amount"

