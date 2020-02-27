#!/bin/bash -x

day=$1
month=$2
space=""

if [[ "$month" != "$space" && "$day" != "$spce" ]]
then
      echo "Date: $day-$month"
      month=${month,,}
      result=FALSE

      if [[ ( "$month" = "march" && $day -ge 20 && $day -le 31 ) || 
            ( "$month" = "april" && $day -ge 1 && $day -le 30 ) || 
            ( "$month" = "may" && $day -ge 1 && $day -le 31 ) || 
            ( "$month" = "june" && $day -ge 1 && $day -le 20 ) ]]
      then
            result=TRUE
      fi
      echo "Reslut is, $result"
else 
      echo "Pass CommandLine Arguments"
fi