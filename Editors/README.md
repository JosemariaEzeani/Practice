## Less 

Movement

```shell
←↑↓→ / :n :p
X  / Xg Note: 0g == g and G for last line
```

Search & Replace

```shell
//?X 
```

------

## Readline 

Movement

```shell
←↑↓→
Ctrl+a/e = to start/end
Ctrl+r = fetch prev cmd
Tab - autocomplete 

Alt+f/b = word movement
Alt+p = word search 
Alt+Ctrl+y / Alt+.
Alt + 0/-
Alt + Ctrl + y = insert arg
```

Editing

```shell
Ctrl+W = delete word
Ctrl+_  = undo
Ctrl+l = clear screen
Ctrl+k/u = cut →/← 
Ctrl+y =  paste

Alt+\ = delete white sp
Alt+t = transpose words 
Alt+u/l/c  = change caps
```

Other

```shell
Ctrl+C = stop command
Ctrl+Z = sleep program
!! = repeat last command
! = run last command 
!<cmd>:p = print last cmd
!$ = last command arg
Alt+. = last command arg
!* = all args of last cmd
^<1st>^<2nd> repl 1st 2nd
```
------
## Vim

File Handling

```shell
Recovery = Vim -r
Save = :w / :saveas
Open = :(v)split <file>
Exit = :q
Close = :close / :only

Macros missing
```

Movement

```shell
Window selection
Ctrl+W+h/j/k/l

Movement
h = ← k = ↑ j = ↓ l = →
f/F + <character>

Goto
gg = row | = column %
```

Editing

```shell
Indent = >><<
insert file = :r 
insert cmd = :r!
undo/redo = u / Ctrl + r

Switch Mode
v V ^V = Visual
Insert: I | i | A

Visual: Plain/ Block/ Linewise
y = copy  p = paste d = delete (actually cut)  ~ = change case  u = lower  U = upper 
```

Search & Replace

```shell
Cursor search
n = → N = ←
% = matching

Pattern Search
/{pattern}[/[offset]]

:s for search and replace
:noh remove las h
```

------
## Nano

File Handling

```shell
Ctrl+S
Save current file
 
Ctrl+O
Write file/("Save as")
 
Ctrl+R
Insert a file
 
Ctrl+X
Close buffer/exit 
```

Movement

```shell
←↑↓→
Character/movement

Ctrl+←↑↓→
Word/block movement
 
Ctrl+A/E
To start/end of line
 
Ctrl+Y/V
One page up/down

Alt+\/
To top/end of buffer

Alt+G 
Go to specified line
 
Alt+]
Go to closing bracket
 
Alt+</>
Previous/next buffer
```

Editing

```shell
Alt+\/
To top/end of buffer

Alt+G 
Go to specified line
 
Alt+]
Go to closing bracket
 
Alt+</>
Previous/next buffer

Alt+T
Cut until end of buffer

Alt+6
Copy current line 

Alt+3
Comment/uncomment
 
Alt+U/E
Undo/Redu last action
```

Search & Replace

```shell
Ctrl+Q/W
backward/forward search

Alt+Q/W
next backward/ forward
 
Alt+R
Start a replacing session
```

Other

```shell
Alt+D
Word/line/char count

Alt+:
Start/stop recording
 
Alt+;
Replay recording/macro

Ctrl+C
Report cursor position
 
Ctrl+G
Display help text

Tab
Indent marked region
 
Shift+Tab
Unindent marked region
```