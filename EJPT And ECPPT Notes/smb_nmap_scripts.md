# Nmap Scripts
```
nmap --script smb-protocols
nmap --script smb-security-mode
nmap --scipt smb-enum-sessions
nmap --script smb-enum-sessions --scipt-args smbusername=administrator,smbpassword=smbserver_771
nmap --script smb-enum-shares
nmap --script smb-enum-shares --script-args smbusername=administrator,smbpassword=smbserver_771
nmap --script smb-enum-users
nmap --script smb-enum-users --script-args smbusername=administrator,smbpassword=smbserver_771
nmap --script smb-server-stats
nmap --script smb-enum-stats  --script-args smbusername=administrator,smbpassword=smbserver_771
nmap --script smb-enum-domains
nmap --script smb-enum-domains --script-args smbusername=administrator,smbpassword=smbserver_771
nmap --script smb-enum-groups
nmap --script smb-enum-groups --script-args smbusername=administrator,smbpassword=smbserver_771
nmap --script smb-enum-services
nmap --script smb-enum-services --script-args smbusername=administrator,smbpassword=smbserver_771

nmap --script smb-enum-shares,smb-ls --script-args smbusername=administrator,smbpassword=smbserver_771
```
