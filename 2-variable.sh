#!bin/bash
# Shell variable are created once they are assigned a value. A variable
# can contain a number, a character or a string of characters. Variable
# name is case sensitive and can consist of a combination of letters
# and the underscore "_".

# A backslash is used to scape special character meaning:
PRICE_PER_APPLE=5
echo "The price of an Apple today is: \$HK $PRICE_PER_APPLE"

# Encapsulating the variable name with ${} is used to avoid ambiguity
MyFirstLetter=ABC
echo "The first 10 letters in the alphabet are: ${MyFirstLetter}DFGHIJ"

# Encapsulating the variable name with "" will preserve any white space values
greeting='Hello        world!'
echo $greeting" now with spaces: $greeting"

# Variables can be assigned with the value of a command output. This is referred
# to as substitution. Substitution can be done by encapsulating the comand with ``
# (known as back-ticks) or with $()
FILELIST=`ls`
FileWithTimeStamp=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt
echo "The filelist into this folder is: \n${FILELIST}"

# Exercise
# The target of this exercise is to create a string, an integer, 
# and a complex variable using command substitution. The string should 
# be named BIRTHDATE and should contain the text "Jan 1, 2000". 
# The integer should be named Presents and should contain the number 10. 
# The complex variable should be named BIRTHDAY and should contain the 
# full weekday name of the day matching the date in variable BIRTHDATE e.g. 
# Saturday. Note that the 'date' command can be used to convert a date 
# format into a different date format. For example, to convert date value, 
# $date1, to day of the week of date1, use: 

echo ''
BIRTHDATE="Jan 1, 2000"
Presents=10
BIRTHDAY=$(LC_TIME=en_US.UTF-8 date -d "$BIRTHDATE" +%A)

# Testing code - do not change it

if [ "$BIRTHDATE" = "Jan 1, 2000" ] ; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [ $Presents -eq 10 ] ; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi
if [ "$BIRTHDAY" = "Saturday" ] ; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi