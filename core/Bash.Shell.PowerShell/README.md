Introduction - General
```bash
bash # start bash

# Variables:
env # displays env vars (e.g., $NAME, $PATH, $HOME, $BASH_VERSION, $SHELL)

# Permissions: owner, group, everyone
# read (r), write (w), execute (x)
# read (4), write (2), execute (1)

# chown/chgrp/chmod - change owner/group/permission
```
```powershell

```
```shell

```

Introduction - Commands
```bash
< > redirection of command stdin/out from/to file
>> to append to file
| to redirect stdout of commands
; command from left to right
&& 2nd if 1st is successful
|| 2nd if 1st is not successful
```
```powershell

```
```shell

```
Introduction - System
```bash
fg/bg - list processes / change environment
# %+/- (first/second most recently invoked)
# %N/s (select by job number/ command as string) [begins with else ?s for contains]

top # real-time processes (ps/jobs - list processes/jobs)
# kill/pkill - kill process by pid/name 
killall # kill all processes
```
```powershell
Import-CliXML/CSV...
Export-CliXML/CSV...
ConvertTo-XML/HTML...
ConvertFrom-CSV...

Start-Sleep
Start-Job
Resume-Job
Suspend-Job
Wait-Job

```
```shell

```
Introduction - Information
```bash
# print (cal | date | file - type)
# print (find/locate - file | whereis/which - cmd)
# Networking (ping/dig | whois/w | wget/curl | ssh | scp)

```
```powershell
Get-Command
Show-Command
Get-Help
Get-Process
Get-Location
Set-Location
Get-Member
Get-ChildItem

Get-History
Invoke-History

Parameters 
-Confirm - send prompts for actions
-WhatIf - displays consequence of command

Compare-Object
Group-Object
Sort-Object
Foreach-Object
Measure-Object
Where-Object

Invoke-WebRequest
Start-Service
Start-Process
```
```shell
fc
help
```
Introduction - Maths
```bash
# (expr | factor | seq | test)
```
```powershell

```
```shell

```
Core - Navigation
```bash
# (pwd | cd | ls/dir/vdir)
```
```powershell
Set-Location
Get-ChildItem
```
```shell
cd
md
dir
```
Core - File Management
```bash
# (touch - create/edit | mv | rm - delete | ln - link) to file
```
```powershell
Remove-Item
```
```shell
del
erase
rm
```
Core - File System
```bash
# (cp/dd/install)
```
```powershell
Copy-Item
Move-Item 
Rename-Item
Remove-Item
Set-Item
New-Item
Get-ItemProperty
Set-ItemProperty
Format-Table
Format-List
```
```shell
copy
move
rename
```
Core - Directory Management
```bash
# (mkdir - create | rmdir/rm) directory 
# (dirs - view | pushd - add to | popd - remove from) dir stack
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
# (whoami/id/logname/who/groups/users/finger | last/uptime | free/quota/du/df/stat
# (uname - kernel | mount - file systems | arch/head -n1 /etc/issue )

passwd # change password
man # show manual for command
shred # securely delete
truncate # shrink/extend file size
```
```powershell

```
```shell

```
Core - Text Utilities
```bash
# Information
# cat/tac [-n - show line nums][> - override and >> append]
# (gzip - compresses | gunzip - uncompress | gzcat - view compressed) file
# head/tail/split/csplit/cut/paste/join - print segment(s) of file
# nl/od/less/more - displays contents of a file
# base32/base64 - transform into printable data

# summarise (wc/sum/cksum/b2sum/md5sum/sha1sum/sha2)

# Formatting 
fmt # reformat paragraph 
pr # paginate/columnate files
fold # wrap lines

# Basic Modification
# (sort/tsort | shuf | uniq | ptx - permuted index of file) 
comm # compare sorted files
# tr “from” “to” / -d (delete)
# expand/unexpand - tabs to pace or vice versa
paste

# Advanced Modification
bc
grep - searches text
sed
awk
```
```powershell
Get-CimInstance
Get-Content
Add-Content
Set-Content
Select-String
```
```shell
type
```
Core - Shell Utilities
```bash
# (echo | true/false | printf | tee - writes to file from std input)
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
$a,$b = [int]5 <# Variable Assignment #>
$a,$b = $b,$a # Pattern Matching
#` to escaped chars/ for special characters/ breaking long statements

Read-Host
Write-Host
Clear-Host

```

Command Prompt Scripting...

```shell

```

**References:**
https://ss64.com/ps/
https://ss64.com/bash/
https://ss64.com/osx/
https://ss64.com/nt/
https://en.wikibooks.org/wiki/Bourne_Shell_Scripting

Notes: explore zshell on mac