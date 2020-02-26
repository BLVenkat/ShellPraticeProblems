#/bin/bash -x

STAKE=100;
BET=1;
GOAL=200;

win=0;
bets=0;
loss=0;

while (($STAKE > 0 && $STAKE != $GOAL ))
do
	isWin=$((RANDOM%2));
	if(( isWin == 1 )) 
	then
		((win+=1))
		((STAKE+=BET))
	else
		((STAKE-=BET))
		((loss+=1))
	fi
		((bets+=1))
done

echo "win = $win"
echo "loss = $loss"
echo "Bets = $bets"
