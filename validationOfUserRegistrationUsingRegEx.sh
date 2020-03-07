#!/bin/bash -x
​shopt -s extglob

function nameValidattion() {
    namePattern="^[A-Z][a-z]{2,}$"
    echo $namePattern
}
function getFirstName(){
    read -p "Enter First name :" fname
    fnamePattern="$( nameValidattion )";
    if [[ $fname =~ $fnamePattern ]]
    then
        echo "First Name is valid"
    else
        echo "Error: First Name is invalid and First Character should be UpperCase and minimum 3 characters"
        getFirstName
    fi
}
function getLastName(){
     read -p "Enter Last name :" lname
     lnamePattern="$( nameValidattion )";
     if [[ $lname =~ $lnamePattern ]]
     then
        echo "last Name is valid"
     else
        echo "Error: Last Name is invalid and First Character should be UpperCase and minimum 3 characters"
        getLastName
     fi
}
function getEmail(){
     read -p "Enter Email address :" email
     emailPattern="^[0-9a-zA-Z]+[._+-]{0,1}[0-9a-zA-Z]+[@][a-zA-Z]+[.][a-zA-Z]{2,3}([.][a-z]{2}){0,1}$"
     if [[ $email =~ $emailPattern ]]
     then
        echo "valid email"
     else
        echo "Invalid email"
     fi
}
function getMobileNumber(){
    read -p "Enter Mobile number :" number
    numberPattern="^[1-9]{2,}[[:space:]][1-9][0-9]{9}$"
    if [[ $number =~ $numberPattern ]]
    then
        echo "Valid Number"
    else
        echo "Invalid Number"
        getMobileNumber
    fi
}
function getPassword(){
    read -p "Enter Password :" password
    passwordPattern="[0-9a-zA-Z]{8,}$"
    # passwordPattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@%*?&])[A-Za-z\d@%*?&]{8,}$"
    # passwordPattern="^(?=.{8,}$)(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W).*$"
    # passwordPattern="((?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*\W)\w.{8,}\w)"
    # passwordPattern="((?=.*[a-z])(?=.*[0-9])(?=.*[A-Z])(?=.*[!?])[a-zA-Z0-9!?]{8,})"
    # pass="^[*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])]*$"
    # pass="[a-z]{1,}[A-Z]{1,}[0-9]{1,}[@#$%^&+=?!]{1,}$"
    if [[ $password =~ $passwordPattern ]]
    then
        echo "Valid Password"
    else
        echo "Invalid Password and should be minimum 8 characters"
        getPassword
    fi
}
function userRegistration(){
     echo "-----Welcom User Registration Form-----"
     getFirstName
     getLastName
     getEmail
     getMobileNumber
     getPassword
}
userRegistration