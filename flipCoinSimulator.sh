#!/bin/bash -x

### Welcome to Flip coin Simulator ###

#constants
NO_OF_COINS=3
SINGLE_COIN=1
DOUBLE_COINS=2
TRIPLE_COINS=3

#variables
flipCount=0
counter=0


#function to simulate a flip coin problem
flipCoinSimulation(){
local flipCount=$1
local noOfCoins=$2
#declare a dictionary
declare -A flippedCoinResultTracker


for(( counter1=0; counter1 < $flipCount; counter1++ ))
	do
		tossResult="";
		for(( counter2=0; counter2 < $noOfCoins; counter2++ ))
			do
				random=$((RANDOM%2))
				if [ $random -eq 1 ]
				then
					tossResult="$tossResult"H
				else
					tossResult="$tossResult"T
				fi
			done
		flippedCoinResultTracker[$tossResult]=$(( ${flippedCoinResultTracker[$tossResult]} + 1 ))
	done


for i in ${!flippedCoinResultTracker[@]}
	do
		value=${flippedCoinResultTracker[$i]}
		echo "$i $(( ( $value * 100) / $flipCount))"
	done 
}


#read input from user
read -p "Enter number of times you want to flip the coin: " flipCount

while true
	do
		read -p "Enter 1 if you want to flip a single coin , 2 for double and 3 for triple coins: " choice
		case $choice in
		1)
			flipCoinSimulation $flipCount $SINGLE_COIN 
			break
			 ;;
		2)
			flipCoinSimulation $flipCount $DOUBLE_COINS 
			break
			 ;;
		3)
			flipCoinSimulation $flipCount $TRIPLE_COINS
			break
			 ;;
		*)
			echo "Wrong choice" 
			 ;;
esac
done
