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
