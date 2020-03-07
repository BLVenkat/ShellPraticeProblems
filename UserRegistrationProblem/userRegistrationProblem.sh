#!/bin/bash -x

echo "UserRegistration Problem"

function validateFirstName() {
	read -p "Enter First name :" fname
	fname=$1
	fnamePattern="^[A-Z][a-zA-Z]{2,}$"
	
	if [[ $fname =~ $fnamePattern ]]
	then
		echo "First Name is valid."
	else
		echo "First Name is invalid. Please try again..."
	fi
}

function validateLastName() {
	read -p "Enter Last name :" lname
	lname=$1
	lnamePattern="^[A-Z][a-zA-Z]{2,}$"

	if [[ $lname =~ $lnamePattern ]]
	then
		echo "Last Name is valid."
	else
		echo "Last Name is invalid. Please try again..."
	fi
}

function validateEmail() {
	read -p "Enter Email address :" email
	email=$1
	emailPattern="^[0-9a-zA-Z]+[._+-]{0,1}[0-9a-zA-Z]+[@][a-zA-Z]+[.][a-zA-Z]{2,3}([.][a-z]{2}){0,1}$"

	if [[ $email =~ $emailPattern ]]
	then
		echo "Email is valid."
	else
		echo "Email is invalid. Please try again..."
	fi
}

function validateMobileNumber() {
	read -p "Enter Mobile number :" number
	number=$1
	numberPattern="^[0-9]{2,3}[[:space:]][0-9]{10}$"
	#numberPattern="^[0]?[0-9]{10}$"

	if [[ $number =~ $numberPattern ]]
	then
		echo "Mobile Number is valid."		
	else
		echo "Mobile Number is invalid. Please try again..."
	fi
}

function validatePassword() {
	password=$1
	passwordPattern="[0-9a-zA-Z]{8,}$"

	if [[ $password =~ $passwordPattern ]]
	then
		echo "Password is valid."
	else
		echo "Password is invalid. Please try again..."
	fi
}

read -p "enter password : " enteredText

#validateFirstName
#validateLastName
#validateEmail
#validateMobileNumber
validatePassword $enteredText
