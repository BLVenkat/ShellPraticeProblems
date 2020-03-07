#!/bin/bash -x

# Probelm Statement  :- Take a number from user and check if the number is a Prime then show that its palindrome is also prime
#                       a. Write function check if number is Prime.
#                       b. Write function to get the Palindrome.
#                       c. Check if the Palindrome number is also prime.
# Input              :- Take a number from user.
# Logic              :- Check if the number is a Prime then check its palindrome or not.
# Output             :- Number is Prime and also Palindorme.


#CONSTANTS
ZERO=0
DIVIDER=10
ONE=1

#VARIABLES
isPrime=FALSE
isPalinDrome=FALSE

function checkIsPrimeOrNot() {
	i=2
	status=$ZERO
	midNum=$(($number/$i))
	if [[ $number == $ZERO || $number == $ONE ]]
	then
		isPrime=FALSE
	else
	    for (( i=2; i<=$midNum; i++ )) 
	    do
            if [ $(($number%$i)) == $ZERO ] 
            then
                status=$ONE
		        break
            fi
	    done
	    if [ $status == $ZERO ]
 	    then
		    isPrime=TRUE
	    fi
	fi
}

function checkIsPalindromeOrNot() {
   reminder=0
   reverse=""
   temp=$number
   if [ $number -eq $ZERO ]
   then
		isPalinDrome=TRUE
	else
		while [ $temp -gt $ZERO ] 
    	do
      		reminder=$(( $temp % $DIVIDER ))
      		temp=$(( $temp / $DIVIDER ))  
      		reverse=$( echo ${reverse}${reminder} )  
    	done
    	if [ $number -eq $reverse ]
    	then
			isPalinDrome=TRUE
    	fi
    fi
}

function takeInputFromUserAndValidate() {
	read -p "Enter a any integer number: "  number
	if  [[ "$number" =~ ^[0-9]+$ ]]
	then
    	checkIsPrimeOrNot
		checkIsPalindromeOrNot
    	if [[ $isPrime = TRUE && $isPalinDrome = TRUE ]]
    	then
	    	echo "$number is Palindrome and Prime also"
		elif [[ $isPrime = TRUE && $isPalinDrome != TRUE ]]
		then
			echo "$number is only Prime Number and not Palindrome"
		elif [[ $isPrime != TRUE && $isPalinDrome = TRUE ]]
		then
			echo "$number is only Palindrome and not Prime Number."
		else
		    echo "$number is not Palindrome and not Prime Number also."
    	fi 
	else
    	echo "Enter any integer number only and not characters"
    	takeInputFromUserAndValidate
	fi
}

takeInputFromUserAndValidate