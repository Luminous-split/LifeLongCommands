```
Add-Type -AssemblyName system.IdentityModel
```
```
New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList "SPN(service principal name)of user"
```
