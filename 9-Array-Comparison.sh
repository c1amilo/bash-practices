# Comparison of arrays Shell can handle arrays.

#!/bin/bash

# Basic construct
array=(23 45 34 1 2 3)

# To refer to a particular value (e.g. : to refer 3rd value)
echo ${array[2]}

# To refer to all the array values
echo ${array[@]}

# To evaluate the number of elements in an array
echo ${#array[@]}


# Exercise
# In this exercise, you will need to compare three list of arrays and write 
# the common elements of all the three arrays:

# a=(3 5 8 10 6),b=(6 5 4 12),c=(14 7 5 7) result is the common element 5.

echo 
echo Exercise
# Solution
a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)

common_number=0

for nb in "${b[@]}"; do
    for nc in "${c[@]}"; do
        if [ "$nc" -eq "$nb" ]; then
            common_number=$nc
        fi
    done
done

for na in "${a[@]}"; do
    if [ "$na" -eq "$common_number" ]; then
        common_number=$na
    fi
done

echo $common_number