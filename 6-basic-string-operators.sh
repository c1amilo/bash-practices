#!/bin/bash

# Basic String
# The shell allows some common string operations which can be very
# useful for script writing.

# String Length
echo "String Length"
STRING="this is a string"
echo ${#STRING}

# Index
# Find the numerical position in $STRING of any single character in 
# $SUBSTRING that matches. Note that the 'expr' command is used in
# this case.

echo "Index"
SUBSTRING="hat"
expr index "$STRING" "$SUBSTRING" # 1 is the position of the first 't' in $STRING
echo ""

# Substring Extraction
# Extract substring of length $LEN from $STRING starting after 
# position $POS. Note that first position is 0.
echo "Substring Extraction"
POS=1
LEN=3
echo ${STRING:$POS:$LEN}

# If :$LEN is ommited, extract substring from $POS to end of line

echo ${STRING:1}
echo ${STRING:12}
echo ""

# Simple data extraction example:
echo "Simple data extraction example"
# Code to extract the First name from the data record
DATARECORD="last=Clifford,first=Johny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ','` # 14 position of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}
COMMA2=`expr index "$CHOP1FIELD" ','`
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH} 
echo $FIRSTNAME

echo ""
# Substring Replacement
echo "Substring Replacement"
STRING="to be or not to be"
echo "STRING=to be or not to be"
echo ${STRING[@]/be/eat}

# Replace all ocurrences of substring
echo ${STRING[@]//be/eat}

# Delete all occurrence of substring if at the beginning of $STRING
echo ${STRING[@]/#to be/eat now} 

# Replace occurrence of substring if at the end of $STRING
echo ${STRING[@]/%be/eat}

# Replace occurrence of substring with shell command output
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)}
echo ""
echo Exercise
# Exercise
# In this exercise, you will need to change Warren Buffett's known 
# saying. First create a variable ISAY and assign it the original 
# saying value. Then re-assign it with a new changed value using the 
# string operations and following the 4 defined changes: 
# Change1: replace the first occurrence of 'snow' with 'foot'. 
# Change2: delete the second occurrence of 'snow'. 
# Change3: replace 'finding' with 'getting'. 
# Change4: delete all characters following 'wet'. 
# Tip: One way to implement Change4, if to find the index of 
# 'w' in the word 'wet' and then use substring extraction.

# BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
#  write your code here
# ISAY=
# ISAY=

# Solution
BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
ISAY=$BUFFETT
ISAY=${ISAY[@]/snow/foot}
echo "Change1: $ISAY"
ISAY=${ISAY[@]//snow/}
echo "Change2: $ISAY"
ISAY=${ISAY[@]/finding/getting}
echo "Change3: $ISAY"
loc=`expr index "$ISAY" 'w'`
ISAY=${ISAY::$loc+2}
echo "Change4: $POSITION"

echo ""
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo "$ISAY"
