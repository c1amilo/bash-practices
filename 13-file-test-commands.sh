#!/bin/bash
# Often you will want to do some file tests on the file system 
# you are running. In this case, shell will provide you with several 
# useful commands to achieve it.

# The command looks like the following

#     -<command> [filename]
#     [filename1] -<command> [filename2]

# We will briefly introduce some common commands you might encounter 
# in your daily life.


# Example
# use "-e" to test if file exist

echo "--- Example 1 ---"
filename="sample.md"
if [ -e "$filename" ]; then
    echo "$filename exists as a file"
fi

echo
echo "--- Example 2 ---"
directory_name="test_directory"
if [ -d "$directory_name" ]; then
    echo "$directory_name exists as a directory"
fi

echo
echo "--- Example 3 ---"
filename="sample.md"
if [ ! -f "$filename" ]; then
    touch "$filename"
fi
if [ -r "$filename" ]; then
    echo "you are allowed to read $filename"
else
    echo "you are not allowed to read $filename"
fi
