#!/bin/bash

#constants
BASE_VALUE=2
POWER_VALUE=$1

if [ "$POWER_VALUE" = "" ]
then
	echo "Please Pass Arugument "
else
	let times=( $BASE_VALUE**$POWER_VALUE )

	for (( i=0; i<=$times; i++ ))
	do
		let power=( $BASE_VALUE**$i )
		echo "2 ^ $i = $power"
	done
fi
