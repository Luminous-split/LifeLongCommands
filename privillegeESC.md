sudo -l 
find / -type f -perm -u=s 2>/dev/null
find / -type f -perm -4000 2>/dev/null
