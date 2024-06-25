# Smbclient

## Enumerate shares
```bash
smbclient -L \\$ip\Share -U ''
```
## Enumerate more with Known Username and password 
```bash
smbclient \\$ip\$share_name -U '' -P ''
```
