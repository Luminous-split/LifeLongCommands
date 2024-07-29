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

