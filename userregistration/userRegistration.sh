#!/bin/bash -x

function firstNameValidation() {

	while [ $inputCheck -eq 0 ]
	do
		read -p "Enter First Name : " firstName

		if [[ $firstName =~ $NAME_PATTERN ]]
		then
			echo "Firstname is valid"
			(( inputCheck++ ))
		else
			echo "Firstname should start with capital letter and should contain minimum 3 characters"
		fi
	done
inputCheck=0;
}


function lastNameValidation() {
   while [ $inputCheck -eq 0 ]
   do
      read -p "Enter Last Name : " lastName

      if [[ $lastName =~ $NAME_PATTERN ]]
      then
         echo "Lastname is valid"
         (( inputCheck++ ))
      else
         echo "Lastname should start with capital letter and should contain minimum 3 characters"
      fi
   done
inputCheck=0;
}

function emailValidation() {
   while [ $inputCheck -eq 0 ]
   do
      read -p "Enter emailid : " emailId

      if [[ $emailId =~ $EMAIL_PATTERN ]]
      then
         echo "Emailid is valid"
         (( inputCheck++ ))
      else
         echo "Emailid is invalid"
      fi
   done
inputCheck=0;
}

function mobileNumberValidation() {
   while [ $inputCheck -eq 0 ]
   do
      read -p "Enter mobile Number : " mobileNumber

      if [[ $mobileNumber =~ $MOBILE_NUMBER_PATTERN ]]
      then
         echo "mobile number is valid"
         (( inputCheck++ ))
      else
         echo "moblie number is in valid"
      fi
   done
inputCheck=0;
}

function passwordValidation() {
   while [ $inputCheck -eq 0 ]
   do
      read -p "Enter password : " password

      if [[ $password =~ $PASSWORD_PATTERN ]]
      then
         echo "password is valid"
         (( inputCheck++ ))
      else
         echo "password is in valid"
      fi
   done
}


#CONSTANTS OF PROGRAM
NAME_PATTERN="^[A-Z]{1}[a-z]{2,}$"
EMAIL_PATTERN="^[0-9a-zA-Z]+[.]{0,1}[0-9a-zA-Z]+[@][a-zA-Z]+[.][a-zA-Z]{2,3}([.][a-z]{2}){0,1}$"
MOBILE_NUMBER_PATTERN="^[0-9]{1,3}[[:space:]][0-9]{10}$"
PASSWORD_PATTERN="[0-9a-zA-Z]{8,}$"

#variables of program
inputCheck=0;

firstNameValidation
lastNameValidation
emailValidation
mobileNumberValidation
passwordValidation
