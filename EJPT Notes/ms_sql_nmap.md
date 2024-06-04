## nmap
```
nmap --script ms-sql-ntlm-info --script-args mssql.instance-port=1433
nmap --script ms-sql-info <target>
nmap --script ms-sql-brute --script-args userdb=/root/Desktop/Wordlist/common_users.txt,passdb=/path/to/wordlist
nmap --script ms-sql-empty-password <target>
nmap --script ms-sql-query --script-args 'mssql.username=" ", mssql.password=" ", ms-sql-query.query="SELECT * FROM master..syslogins"' <target>
nmap --script ms-sql-dump-hashes --script-args 'mssql.username=" ", mssql.password=" " ' <target>


nmap --script mysql-databases
nmap --script mysql-audit --script-args "mysql-audit.username='root', mysql-audit.password='', mysql-audit.filename=/usr/share/nmap/nselib/data/mysql-cis.audit" <target>

nmap --script mysql-enum <target>


nmap --script mysql-variables <target>
