Introduction - General
```bash
Variables:

- env
- $NAME, $PATH, $HOME
- $$SHELL 

Permissions:

- owner, group, everyone
- read (r), write (w), execute (x)
- read (4), write (2), execute (1)

chmod - change permission
chown - change owner
```
```powershell

```
```shell

```

Introduction - Commands
```bash
< >  and >> to append to file
| to redirect stdout of commands
; command from left to right
&& 2nd if 1st is successful
|| 2nd if 1st is not successful
<cmd> & run in subshell
```
```powershell

```
```shell

```
Introduction - System
```bash
ps - processes
top - real-time processes 
kill <pid> kill process 
pkill <name> - kill process
killall name - kill all with name
```
```powershell

```
```shell

```
Introduction - Information
```bash
arch - prints comp architecture
date - prints dates
file - get type of file
find - find files
locate - locate files
whereis - find command
```
```powershell

```
```shell

```
Introduction - Maths
```bash
expr - evaluates expression
factor - returns factors 
seq - generates numbers 
test - evaluates conditional expr
```
```powershell

```
```shell

```
Core - Navigation
```bash
pwd - show current dir
cd - change directory
ls - list directory contents
```
```powershell
Set-Location
Get-ChildItem
```
```shell
cd
dir
```
Core - File Management
```bash
touch - create file
rm - deletes file
```
```powershell
Remove-Item
```
```shell
del, erase, rmdir
```
Core - File System
```bash
cp - copy to source
mv - renome or move
install - advanced cp
```
```powershell
Copy-Item
Move-Item Rename-Item
```
```shell
copy
move rename
```
Core - Directory Management
```bash
mkdir -p - creates dir
rmdir - removes empty dir
rm -r - removes dirs
pushd - add dir to stack
popd - rmv dir from stack
dirs -vl - dirs in stack
```
```powershell
New-Item
Remove-Item
Push-Location
Pop-Location
```
```shell
md
del, erase, rmdir
pushd
popd
```
Core - Information
```bash
whoami - show username
man <cmd> - show manual for command
free - memory info
df - space usage
uptime - show uptime
shred - securely delete
date - show date
mount - show file systems
uname -a - show system and kernel
head -n1 /etc/issue - show distribution
```
```powershell

```
```shell

```
Core - Text Utilities
```bash
Information
cat [-n - show line nums][> - override and >> append]
head [-n/c- lines/characters] from a file/files
tail [-n - number of lines] from a file/files
less - displays contents of a file

Basic Modification
sort - sorts files (-n -r -k -t)
tr “from” “to” / -d (delete)
uniq -c/d/u
paste

Advanced Modification
bc
grep - searches text
sed
awk
```
```powershell
Get-Content
```
```shell
type
```
Core - Shell Utilities
```bash
echo - returns arguments as string
true/ false - true/false
printf - formatted print
tee - writes to file from std input
```
```powershell

```
```shell

```
Bash Scripting
```bash
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
```

PowerShell Scripting...

```powershell

```

Command Prompt Scripting...

```shell

```

**References:**
https://ss64.com/ps/
https://ss64.com/bash/
https://ss64.com/osx/
https://ss64.com/nt/

Notes: explore zshell on mac