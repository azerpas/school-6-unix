# TP1

## Echo

```
username="azerpas"
echo "Hello $username"
```

Show date     
```echo "Today is `date`"```

## A few commands

- man: Manuel
- ls: List all files/directories
- passwd [options] username/group     
`l`: block account, `u`: unblock account     

## Users

#### 3 types:
- user
- groups
- others 

### Create a user
`useradd $username`

### Files

- Each user stock inside `/etc/passwd`
- Encrypted password stocked into `/etc/shadow`

**Format** `/etc/passwd`, for each line:     
`name:previous_dir_password:uid:gid:comment`

UID = 0 -> Root     

- Each group stock inside `/etc/group`
- Encrypted password stocked into `/etc/gshadow`

## Man

- `l`: Look for text
- `n`: next occurence
- `N`: prec

## Permissions

| --- | 0 | 000 |
|-----|---|-----|
| --x | 1 | 001 |
| -w- | 2 | 010 |
| -wx | 3 | 011 |
| r-- | 4 | 100 |
| r-x | 5 | 101 |
| rw- | 6 | 110 |
| rwx | 7 | 111 |

`chmod user|group|other file_path`