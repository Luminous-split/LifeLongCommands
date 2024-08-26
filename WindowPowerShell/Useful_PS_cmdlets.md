## Check Window Loggedin History Time and users

```
Get-WinEvent -LogName Security | where-object { $_.Id -eq 4624 } | select-object -Property timecreated, @{Name='User';Expression={$_.Properties[5].value}} -unique
```

## Check Scheduled Task

```
Get-ScheduledTask | select-object ktasname,taskpath,state
```
