# Shell functions
# Like other programming languages, the shell may have funtions. A funtion
# is a subroutine that implments a set of commands and operations. It is
# useful for repeated tasks. e.g.

#!/bin/bash

function function_B {
    echo "Funciont B."
}

function function_A {
    echo "$1"
}

function adder {
    echo "$(($1 + $2))"
}

# FUNCTION CALLS
# Pass parameter to function A
function_A "Function A."
function_B
# Pass two parameters to function adder
adder 12 56

# Exercise
# In this exercise, you will need to write a function called ENGLISH_CALC which can process
# sentences such as:

# 3 plus 5', '5 minus 1' or '4 times 6' and print the results as: '3 + 5 = 8', 
# '5 - 1 = 4' or '4 * 6 = 24' respectively.

echo 
echo Exercise

function ENGLISH_CALC {
    if [ "$2" == "plus" ]; then
        echo "$1 + $3 = $(($1 + $3))"
    fi
    if [ "$2" == "minus" ]; then
        echo "$1 - $3 = $(($1 - $3))"
    fi
    if [ "$2" == "times" ]; then
        echo "$1 * $3 = $(($1 * $3))"
    fi
}

ENGLISH_CALC 1 plus 5
ENGLISH_CALC 5 minus 1
ENGLISH_CALC 4 times 6