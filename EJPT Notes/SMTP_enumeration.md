## Nmap 

```
nmap --script smtp-* demo.ine.local -p 25 > all_script_smtp
```

## smtp-user-enum

```
smtp-user-enum -M VRFY -u /usr/share/wordlist/user.txt -t demo.ine.local
```

