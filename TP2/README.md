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