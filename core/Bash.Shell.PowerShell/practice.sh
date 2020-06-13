#!bin/bash
# note: oriented around exist statuses
# www.gnu.org/software/
# use "help <cmd>" when unsure
# excludes coreutils.fileutils

# coreutils.shellutils

# use echo to write arguments to standard output
echo START OF PRACTICE
echo WHAT IS YOUR NAME?
read name
echo HELLO $name

# Built-In Bash Variables ($0-1...n)
params=$# #number of previous args
args=$@ #returns previous args
hello=$? #returns previous exist status

echo I SAID: $args

ten=10

for i in {0..20..2}
value=$((i+params))
do
  if  [ $value -lt $ten]; then
    echo $value IS LESS THAN $ten
  elif [ $value -gt $ten ]; then
    echo $value IS GREATER THAN $ten
  else
    echo $value IS EQUAL TO $ten
  fi
done

# use bc for arbitrary precision calculation
# use printf instead of echo to format and print data

# declare variables (-x to export)
# ~ slightly different for associative arrays
echo arr=() #empty array
echo arr=(1 2 3) #init array
arr[2]=3 #overwrite 3rd element
arr+=(4 5) #append 4 to end
arr=(-1 0)+arr #append to front
str=$(1s) #save 2nd output as string
str=( $(1s) ) #save 2nd output as array of files
# use of unset requires reseting indices
unset arr[0] # remove elem
arr=(${arr[@]}) # new array without missing indices
echo ${arr[0]} #get 1st element
echo ${arr[@]} #get all elements
echo ${!arr[@]} #get array indices
echo ${#arr[@]} #get array size
echo ${arr[@]:1:5} #get 5 elements starting from 2nd

# functions

# classes


# coreutils.textutils

# awk for text processing

# cut for selecting columns from data
# head/tail to print first n lines of a file
# tr to translate, squeeze, and/or delete characters
# sort + uniq + paste

# grep

# sed


# otherutils


# ^ Base System ^
