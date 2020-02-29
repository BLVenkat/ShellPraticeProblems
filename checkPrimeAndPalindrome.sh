#!/bin/bash -x

# Probelm Statement  :- Take a number from user and check if the number is a Prime then show that its palindrome is also prime
#                       a. Write function check if number is Prime.
#                       b. Write function to get the Palindrome.
#                       c. Check if the Palindrome number is also prime.
# Input              :- Take a number from user.
# Logic              :- Check if the number is a Prime then check its palindrome or not.
# Output             :- Number is Prime and also Palindorme.


#VARIABLES
isPrime=FALSE
isPalinDrome=FALSE

function checkIsPrimeOrNot() {
	i=2
	status=0
	midNum=$(($number/$i))
	if [[ $number == 0 || $number == 1 ]]
	then
		isPrime=FALSE
	else
	    for (( i=2; i<=$midNum; i++ )) 
	    do
            if [ $(($number%$i)) == 0 ] 
            then
                status=1
		        break
            fi
	    done
	    if [ $status == 0 ]
 	    then
		    isPrime=TRUE
	    fi
	fi
}

function checkIsPalindromeOrNot() {
   divider=10
   reminder=0
   zero=0
   reverse=""
   temp=$number
   if [ $number -eq $zero ]
   then
		isPalinDrome=TRUE
	else
		while [ $temp -gt $zero ] 
    	do
      		reminder=$(( $temp % $divider ))
      		temp=$(( $temp / $divider ))  
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