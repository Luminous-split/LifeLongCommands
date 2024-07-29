## Linux Fingerd

- Using Metasploit Framework
```
msfconsole -q
use auxillary/scanner/finger/finger_users
set rhosts demo3.ine.local
exploit
```

- Using Pearl Script (finger-user-enum)

```
./finger-user-enum.pl -U /user/share/wordlists/users.txt -t demo2.ine.local
```
