#!/bin/bash -x

#Problem-statement:-	Simulates a Gambler who starts with a stake and
#							bets every game to win or loose some stake. Being a Calculative
#							Gambler exits if the Stake reaches a high or a low limit.
#use-case2			:- As a Gambler make $1 bet so either win or loose $1.

#constants
STAKE_PER_DAY=100
BET=1
WIN=1
LOSS=0

random=$(( RANDOM%2))
	case $random in 
		$WIN) echo "WIN" ;;
		$LOSS) echo "Loss" ;;
		*);;
	esac
