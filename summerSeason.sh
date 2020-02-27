
# Problem statement :- Write a program that takes day and month from the command line and prints true 
#  if day of month is between March 20 and June 20, false otherwise.

# Input :- Take Day and Month as Commandline Argument.
# Logic/operation   :- Use if else to print True or False.
# Output            :- Print True or False. 
# file		  :- summerSeason.sh

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