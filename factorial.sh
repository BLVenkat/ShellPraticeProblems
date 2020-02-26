#!/bin/bash -x

let factorial=1

read -p "enter a number to find factorial : " number

for (( i=1; i<=$number; i++ ))
do
	(( factorial*=i ))
done
echo "$factorial"
