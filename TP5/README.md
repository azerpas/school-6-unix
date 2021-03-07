# TP5

## Bash language

- *Bourn Again Shell*
- Program bash = bash text inside a text file
- Make it executable `chmod u+x script.sh`
- Execute it `./script.sh`

### Structure

- First line: `#! /bin/bash`
- Exit with command: `exit`

### Vars

- `my_var=value`
- `echo $my_var`
- `read var1 var2 varn`    
    - Interactive prompt
    - First word goes into **var1**
    - Second word goes into **var2**
    - What's left of the string goes into **varn**

### if elif else

```
if cond; then 
    cmds
elif cond; then
    cmds
else
    cmds
fi
```

### test

- `test` command (or `[ cmd ]`)
- `if [$x -eq 42]; then` = `if test $x -eq 42; then`     
#### Args:
**Number tests**
- `-eq`: equals
- `-ne`: different
- `-gt`: greater than
- `-ge`: greater than or equal to
- `-lt`: less than     
**String tests**
- `=`: equals
- `!=`: different
- `-z`: empty
- `-n`: not empty      
**File tests**
- `-e`: exists
- `-d`: is a directory
- `-f`: is a file
- `-L`: is a link
- `-r`: readable
- `-w`: writable
- `-x`: executable

### switch

```
case mot in
    motif1)
        cmd...;;
    motif2)
        cmd...;;
    *)
        cmd...;;
esac
```

### for 

```
for i in "$@"
do
    echo $i
done
```

```
x=10;
while [ $x -ge 0]; do
    x=$x+1;
done
```

### Args
- `"$@"`: list of params
- `"$1"`: first param
- `"$0"`: name of command

- `./test.sh 1 2 "3 4"`
```
1 
2
3 4
```