#! /bin/bash

: '

Login Shell: /etc/profile >> ~/.bash_profile >> ~/.profile ~/.bash_login
Non-Login Shell: /etc/bash.bashrc ~/.bashrc
Shell Variables...

note: oriented around exist statuses
www.gnu.org/software/
use "help <cmd>" when unsure
excludes coreutils.fileutils

'

# coreutils.shellutils

# use echo to write arguments to standard output
echo START OF PRACTICE
echo WHAT IS YOUR NAME?
select name in Dinaka John Daniel Jolie Gerald Nneka
do
  case $name in
  Dinaka)
  	echo Hello $name Ezeani;;
  John)
  	echo Hello $name Baxter;;
  Daniel)
  	echo Hello $name Sphinx;;
  Jolie)
  	echo Hello $name Spark;;
  Gerald)
  	echo Hello $name Black;;
  Nneka)
  	echo Hello $name Okafor;;
  *)
  	echo 'You are not invited\!';;
  esac
done

# Built-In Bash Variables ($0-1...n)
params=$# #number of previous args
args=$@ #returns previous args
hello=$? #returns previous exist status

echo I SAID: $args

ten=10

for i in {0..20..2}
do
  value=$((i+params))
  if  [ $value -lt $ten ]; then
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
arr=()
arr=(0 1 2 3)
arr[4]=4
arr+=(5 6)
# use of unset requires reseting indices
unset arr[0] # remove elem (followed by new array init)
arr=(${arr[@]} 7) # new array (RegEx possible)
echo GET 1st ELEMENT
echo ${arr[0]}
echo GET ALL ELEMENTS
echo ${arr[@]}
echo GET ARRAY INDICES
echo ${!arr[@]}
echo GET ARRAY SIZE
echo ${#arr[@]}
echo GET ELEMENTS  2nd-6th
echo ${arr[@]:1:5}

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

cat << readLine
Simple program that reads from terminal or file.
Default: Terminal (without file as arg)
readLine

function printLine() # note: side effects are possible
{
  echo $1
}

while read line
do
  echo printLine $line
done < ${1:-/dev/stdin}

# bash -x (to debug code)[-x][set -x set +x]
