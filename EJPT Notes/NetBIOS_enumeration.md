# Windows

## nmap Enumeration 

```
nmap -sU -sV -T4 --script nbstat.nse -p137 -Pn 10.4.30.139
```

## nbtscan
- In the format of  [ IP_address, NetBIOS Name, Server, User, Mac_Addresses ]
  
```
 nbtscan ip/cidr
#  nbtscan 10.10.10.0/24
```

## nmblookup

```
nmblookup -A $ip
```

------------------ ------------------ ------------------ ------------------ ------------------ ------------------
 
# Linux
 
## nmap Enumeration

- Normal Scan
```
nmap -p 139,445 -sV demo2.ine.local -oN save.txt
```
- Script Scan for shares
```
nmap --script smb-enum-shares -p445 demo.ine.local
```

## enum4linux enumeration

```
enum4linux -r demo2.ine.local | grep "Local User"
```

## smbmap enumeration
 
```
smbmap -H demo2.ine.local
```

## rpcclient 

```
rpcclient -U "" demo2.ine.local
```
```
$ enumdomusers
$ enumdomgroups
$ enumdomains
$ queryuser username(john)
```

