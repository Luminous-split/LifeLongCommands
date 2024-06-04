
## nmap
```
nmap --script mysql-users
nmap --script mysql-databases
nmap --script mysql-audit --script-args "mysql-audit.username='root', mysql-audit.password='', mysql-audit.filename=/usr/share/nmap/nselib/data/mysql-cis.audit" <target>
nmap --script mysql-query --script-args 'mysql-query.query="SELECT user,host FROM mysql.user"' <target>
nmap --script mysql-enum <target>
nmap --script mysql-empty-password <target>
nmap --script mysql-info <target>
nmap --script mysql-variables <target>


```

## metasploit
```
auxillary/scanner/mysql/mysql_schemadump
auxillary/scanner/mysql/mysql_writable_dirs
auxillary/scanner/mysql/mysql_file_enum
auxillary/scanner/mysql/mysql_hashdump
```
