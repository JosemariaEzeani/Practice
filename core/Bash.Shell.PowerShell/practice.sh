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


# coreutils.textutils


# otherutils


# ^ Base System ^
