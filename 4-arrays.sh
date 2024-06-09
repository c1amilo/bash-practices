#!/bin/bash
# Arrays
# An array can hold several values under one name. Array naming
# is the same as variables naming. An array initialized by assign
# space-delimited values enclosed in ()

my_array=(apple banana "Fruit Basket" orange)
new_array[2]=apricot

# The total number of elements in the array is referenced
# by ${#arrayname[@]}

echo ${#my_array[@]}

# Tutorial source https://www.learnshell.org/en/Arrays
# The array elements can be accessed with their numeric index. The 
# index of the first element is 0.
echo ${my_array[3]}
# adding another array element
my_array[4]="carrot"
echo ${#my_array[@]}
echo ${my_array[${#my_array[@]}-1]}

echo ""
echo "Excersice Solution"
# Exercise
# In this exercise, you need to add numbers and strings to the correct
# arrays. You must add the numbers 1,2, and 3 to the "numbers" array, and
# worlds 'hello' and 'world' to the strings array.

# You will also have to correct the values of the variable NumberOfNames 
# and the variable second_name. NumberOfNames should hold the total numbers
# of names in the NAMES array, using the $# special variable. variable 
# second_name should hold the second name in he NAMES array using the brackets
# operator []. Note that the index is zero-based, so if you want to access
# the second item in the list, its index will be 1.

NAMES=( John Eric Jessica )
# write your code here
NUMBERS=(1 2 3)
STRINGS=(hello world)
NumberOfNames=${#NAMES[@]}
second_name=${NAMES[1]}
echo ${NUMBERS[@]}
echo ${STRINGS[@]}
echo "The number of names listed in the NAMES array: $NumberOfNames"
echo "The second name on the NAMES list is:" ${second_name}