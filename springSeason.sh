#!/bin/bash -x

day=$1
month=$2
month=${month,,}
result=false

if [[ ( "$month" = "march" && $day -ge 20 && $day -le 31 ) || 
      ( "$month" = "april" && $day -ge 1 && $day -le 30 ) || 
      ( "$month" = "may" && $day -ge 1 && $day -le 31 ) || 
      ( "$month" = "june" && $day -ge 1 && $day -le 20 ) ]]
then
       result=true
fi

echo "Date: $day-$month"
echo "Reslut is, $result"