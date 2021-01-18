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
- 

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

