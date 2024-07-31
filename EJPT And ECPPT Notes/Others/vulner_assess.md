##  Heartbleed (CVE-2014-0160)
### The Heartbleed bug affects OpenSSL and allows attackers to read memory from affected servers. Nmap includes the ssl-heartbleed script to detect this vulnerability.
```
sudo nmap -sV -p 443 --script ssl-heartbleed <target>
```
##  EternalBlue (MS17-010)
### EternalBlue is an exploit used by the WannaCry ransomware. Nmap includes the smb-vuln-ms17-010 script to detect this vulnerability.
```
sudo nmap -p 445 --script smb-vuln-ms17-010 <target>
```

##  Log4Shell (CVE-2021-44228)
### Log4Shell is a critical remote code execution vulnerability in Apache Log4j 2.
```
sudo nmap -sV --script log4shell <target>
```
