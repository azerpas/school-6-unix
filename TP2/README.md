# TP2

## File Commands

- `cat`, `tac`, read & print out
- `expand` tab to spaces
- `unexpand`: spaces to tab
- `head` `tail`: start or end of file
- `join` join lines from two files
- `nl` show lines numbers
- `split` split file in multiple files

### Create file
`touch my-file.txt -lt`

### File globbing
File extension with jokers (wildcards)

## Wildcards

- ?: Any only character
- *: Every chain of char
- [a]: "a" inside of...
- [a-z]: every char from "a" to "z"
- [!a-z]: not in "a" to "z"
- ~: home directory

### Examples

- `[aA]????`: 5 char starting with "a" or "A"
- `[!0-9]*`: Every chains of char not starting with a number

### Usage in Shell

- `ls -l [fF]*`
- `ls *.c | more`

## Flux & Pipes

### Flux

`<`: **in**      
&       
`>`: **out**

`>>`: **appending**    

#### I/O

- &0: in
- &1: out
- &2: errors

### Pipes

`command1 | command2`

### xargs

`xargs [options] [command]`     

- `ls f* | xargs cat`
Print (cat) to Shell output the content of all files starting with "f*" 

### /dev/null

Used to delete error messages    
`grep try /etc/* 2>/dev/null`

## Process

- pid: ID
- pwd: current dir
- env
- stdin, stdout, stderr

**Bash** is a process     

We use `type` to verify if a command is integrated into the shell. This command will then eventually create a process.    

`type cp ls which type`    

- `ps -Al`: list all the current process
    - `-a`: all process
    - `-u`: attached to user
    - "F": Process Flags
        - 002: being created
        - 040: forked 
        - 400: killed
    - "S": Process States
        - R: Runnable
        - S: Sleeping
        - Z: Zombie
- `top`
    - `N` sort by pid
    - `A` sort by time order
    - `P` sort by CPU usage
    - `M` sort by MEM usage
    - `k` to kill a process
    