# Crackmapexec
## With Password
crackmapexec smb $ip -u '' -p '' --$Flags

## Pass the hashes
crackmapexec smb $ip -u '' -H '' --$Flags




# Smbclient
## Enumerate sharess
smbclient -L \\$ip\Share -U ''
## Enumerate more with Known Username and password 
smbclient \\$ip\$share_name -U '' -P ''

# Hy
