#!/bin/bash -x

for(( i=0;i<5;i++ ))
do 
	random=$(( 100+RANDOM%900 ));
		arr[$i]=$random;
	
done

echo "before sorting ${arr[@]}";

for(( i=0;i<5;i++ )) 
do
	for (( j=0;j<5-i-1;j++ ))
	do
		if (( ${arr[j]} > ${arr[$((j+1))]} ));
		then
			temp=${arr[j]};
			arr[$j]=${arr[$((j+1))]};
			arr[$((j+1))]=$temp;
		fi
	done	
done

echo "after sorting ${arr[@]}";
echo "the smallest number is ${arr[0]}"
echo "the largest number is ${arr[4]}"

