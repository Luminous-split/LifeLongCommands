# Linux Privesc
- Find sudo permitted files
```
sudo -l
```

- Find SUID binaries
```
find / -type f -perm -u=s 2>/dev/null
```

-Find SUID binaries
```
find / -type f -perm -4000 2>/dev/null
```



