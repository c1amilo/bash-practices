#!/bin/bash
# Passing Arguments to the Script
# Arguments can be passed to the scrit when it is executed, by
# writting them as a space-delimited list following the script file name.

# Inside the script, the $1 variable the first argument in the
# command line, $2 the second argument and so forth. The variable $0
# references to the current script.

# Example
# echo "File name is $0" # hold the current script
# echo $3
# Data=$5
# echo "A $Data cost just $6."
# echo $#

# To execute this example use:
# bash 3-arguments.sh apple 5 banana 8 "Fruit Basket" 15

# Exercise
# Pass "Shell is fun" (3 arguments) to the script(prog.sh) as an 
# arguments and print the length of the arguments.
function File {
    # echo "print the arguments"
    echo $#
}

if [ ! $# -lt 1 ]; then
    File $*
    exit 0
fi

# To execute this exercise use:
# bash 3-arguments.sh Shell is fun
# Expected Output
# 3
