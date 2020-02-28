 
#Problem statement :- To check word is palindrome or not using functions
#Input				 :- Takes a word
#Output            :- Prints word is palindrome or not
#file					 :- Palindrome.sh


#!/bin/bash -x

#CONSTANTS OF PROGRAM
PALINDROME=1;

function checkPalindrome() {

	#LOCAL VARIABLES
	local wordToCheck=$1;
	local isPalindrome=1;
	local notPalindrome=0;
	local lengthOfWord=${#wordToCheck}

	for (( i=$lengthOfWord; i>=0; i-- ))
	do
		 result+=${wordToCheck:$i:1}
	done

	if [ $result = $wordToCheck ]
	then
		echo $isPalindrome
	else
		echo $notPalindrome
	fi
}

inputCheck=0;

while [ $inputCheck -eq 0 ]
do

	read -p "Enter a Word To Check Palimbrome Or Not : " WORD
	LENGTH_OF_WORD=${#WORD}
	NULL_CHECK=""

	if [ $LENGTH_OF_WORD -le 1 ]
	then
		echo `clear`
		echo "Please enter a word greater than 1"
	else
		(( inputCheck++ ))
	fi
done

 status="$( checkPalindrome $WORD )"

if [ $status = $PALINDROME ]
then
echo "Word Is Palindrome"
else
echo "Word Is Not Palindrome"
fi

