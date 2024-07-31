# Passive Recon
## CLI tools
host

whois 
```
theHarvester -d some_domain.com -b google,linkedin,dnsdumbster,crtsh,yahoo
``` 
dnsrecon

WafWoof

## Website Tools
dnsdumpster

netcraft - website footprinting

## Google Dork
site:

intitle:
intitle:index of --> common vuln of Publicily available directory listing

inurl:
inurl:auth_user_file.txt
inurl:passwd.txt
 
filetype:

cache:
 
waybackmachine

## Leaked Password Database 
www.haveibeenpwned.com 



# Active Recon
## ZoneTransfer
dnsenum --> auto execute other functions

dig axfr @Nameserver.sth zonetransfer

fierce -dns zonetransfer.me 

netdiscover -i eth0 -r 192.168.0.0/24 
## Nmap
-sN (only ping sweeep -- No port scan)

