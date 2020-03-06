#!/bin/bash -x

#CONSTANTS
IS_HEAD=0;
IS_TAIL=1;

toss=$((RANDOM%2));

case $toss in
	$IS_HEAD)
		echo "heads";
		;;
	$IS_TAIL)
		echo "tails";
		;;
esac
