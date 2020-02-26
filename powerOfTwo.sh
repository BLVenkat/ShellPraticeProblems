#!/bin/bash


echo "Enter Value of Power: "
read b
res=1

if((b==0));
then
  res=1
fi

if((b < 250 && b >= 1));
then
  while((b > 0))
  do
    res=$((res * 2))
    b=$((b - 1))
  done
else
  echo "power invalid!!!"
fi

echo "2 to the power $1 is $res"

