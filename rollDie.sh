#!/bin/bash -x

#Roll a die and find the number between 1 to 6
#Repeat the Die roll and find the result each time
#Store the result in a dictionary
#Repeat till any one of the number has reached 10 times
#Find the number that reached maximum times and the one that was for minimum times

declare -A Rolls=( [0]=0 [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )
isTen=0
diceTimes=0
diceMaxOccurence=0;
diceMinOccurence=1;

function getDiceValue(){

	DIE=1
	((DIE+=$((RANDOM%6)) ))
	echo $DIE

}

function roll(){

	((diceTimes++))
	roll=$(getDiceValue)
	((Rolls[$roll]++))

}

function tenCheck(){

	for ((i=1;i<=6 ;i++))
	do
		if [[ ${Rolls[$i]} == 10 ]]
		then
			((isTen=1));
			((diceMaxOccurence=$i))
		elif [[ ${Rolls[$diceMinOccurence]} > ${Rolls[$i]} ]]
		then
			((diceMinOccurence=$i))
		fi
	done

}

function display(){

	for((i=1;i<=6;i++))
	do
		echo "$i --> ${Rolls[$i]}"
	done
	echo "------------------Dice played for $diceTimes------------------------- "
	echo "------------------Max Occurence of dice = $diceMaxOccurence------------------"
	echo "------------------min Occurence of dice = $diceMinOccurence------------------"

}

function play(){

	while (( !isTen ))
	do
		roll
		tenCheck
	done
	display

}

play

