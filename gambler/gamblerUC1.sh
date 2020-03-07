#!/bin/bash -x

#Problem-statement:-	Simulates a Gambler who starts with a stake and
#							bets every game to win or loose some stake. Being a Calculative
#							Gambler exits if the Stake reaches a high or a low limit.
#use-case1			:- As a Gambler, would start with a stake of $100 every day and bet $1 every game.

#constants
STAKE_PER_DAY=100
BET=1

echo "Stake every day = $STAKE_PER_DAY and bet every game = $BET"
