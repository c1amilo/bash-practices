#!/bin/bash

# It often comes the situations that you want to catch a special
# signal/interruption/user input in your script to prevent 
# the unpredictables.

# Trap is your command to try:
#     trap <arg/function> <signal>

# Example

# notice you cannot make Ctrl-C work in this shell, 
# try with your local one, also remeber to chmod +x 
# your local .sh file so you can execute it!

function booh {
    echo "booh!"
}

# trap booh SIGINT SIGTERM
trap booh 2 15
echo "it's going to run until you hit Ctrl+Z"
echo "hit Ctrl+C to be blown away!"

while true        
do
    sleep 60       
done

# Some of the common signal types you can trap:
#     SIGINT: user sends an interrupt signal (Ctrl + C)
#     SIGQUIT: user sends a quit signal (Ctrl + D)
#     SIGFPE: attempted an illegal mathematical operation

# You can check out all signal types by entering the following command:
# kill -l

# Notice the numbers before each signal name, you can use that 
# number to avoid typing long strings in trap:
#2 corresponds to SIGINT and 15 corresponds to SIGTERM
# trap booh 2 15

# one of the common usage of trap is to do cleanup temporary files:
# trap "rm -f folder; exit" 2