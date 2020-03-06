#!/bin/bash -x

### Welcome to snake and ladder simulation problem ###

#constants
PLAYER=1
NO_PLAY=0
LADDER=1
SNAKE=2
FINAL_POSITION=100
FIRST_PLAYER=1
SECOND_PLAYER=2

#variables
currentPosition=0
activePlayer=1
rolledOne=0
rolledTwo=0
player1Position=0
player2Position=0

#declare dictionary to store every position of players
declare -A player1PostionTrack
declare -A player2PostionTrack

findCurrentPosition(){
		#variables
		rolledDieOutput=$(( RANDOM%6 + 1 ))
		defineStatus=$(( RANDOM%2 + 1 ))
		case $defineStatus in
			0 )
			currentPosition=$1 ;;
			1 )
			currentPosition=$(($1 + $rolledDieOutput))
				;;
			2 )
			currentPosition=$(($1 - $rolledDieOutput))
				;;
		esac

   	if [ $currentPosition -gt $FINAL_POSITION ]
	 		then 
         	 currentPosition=$(($currentPosition - $rolledDieOutput))
		fi

		if [ $currentPosition -lt 0 ]
			 then
				currentPosition=0;
   	fi
		echo $currentPosition

}

while [ $player1Position -lt $FINAL_POSITION ] && [ $player2Position -lt $FINAL_POSITION ]
 do
     if [ $activePlayer -eq $FIRST_PLAYER ]
     then
			(( rolledOne++ ))
          player1Position=$( findCurrentPosition $player1Position)
          activePlayer=$SECOND_PLAYER
			 player1PositionTrack[$rolledOne]=$player1Position
     else
          (( rolledTwo++ ));
          player2Position=$( findCurrentPosition $player2Position)
          activePlayer=$FIRST_PLAYER
			 player1PositionTrack[$rolledTwo]=$player2Position

     fi   
 done

if [ $activePlayer -eq $FIRST_PLAYER ]
     then 
	       echo "winning count for player1" $rolledOne
     else
               echo "winning count for player2"  $rolledTwo
fi
